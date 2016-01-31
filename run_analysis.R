###########################################################
# File:     run_analysis.R
# Purpose:  Create a tidy dataset from the UCI HAR Dataset
# Version:  1.0
# Input:    ZIP file containing UCI HAR Dataset
# Output:   * dataset (memory) - Tidy dataset before
#             average calculation (step 4)
#           * avg.dataset.tbl (memory) - Tidy dataset with
#             calculated averages (step 5)
#           * avg_dataset.txt (disk) - Tidy dataset with
#             calculated averages
# Author:   Dick Groenhof
###########################################################

# Load the 'dplyr' package
library(dplyr)

# Set support variables
# url.data contains the URL for the source dataset zipfile
# (loaded in 2 lines, to keep line length < 80 characters)
url.data <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles"
url.data <- paste(url.data, "%2FUCI%20HAR%20Dataset.zip", sep="")

# Set the working directories
work.dir <- getwd()
test.dir <- paste(work.dir, "/data/UCI HAR Dataset/test", sep="")
train.dir <- paste(work.dir, "/data/UCI HAR Dataset/train", sep="")

# Check if 'data' directory exists, if not then create it
if(!file.exists("data")) {
    dir.create("data")
}
setwd("data")

# Download the source dataset zipfile and unzip it
download.file(url.data, "UCI_HAR_Dataset.zip",quiet = TRUE)
unzip("UCI_HAR_Dataset.zip")

# Remove the zipfile from disk
file.remove("UCI_HAR_Dataset.zip")

# Go to 'test' directory and load the 'test' data into memory
setwd(test.dir)
x.test.data         <- read.table("X_test.txt")
y.test.data         <- read.table("y_test.txt")
subject.test.data   <- read.table("subject_test.txt")

# Go to 'train' directory and load the 'train' data into memory
setwd(train.dir)
x.train.data        <- read.table("X_train.txt")
y.train.data        <- read.table("y_train.txt")
subject.train.data  <- read.table("subject_train.txt")


# Go to 'UCI HAR Dataset' direcory and load the 
# variable names (features) and activity labels into memory
setwd("..")
features            <- read.table("features.txt")
activity.labels     <- read.table("activity_labels.txt")


# Set the column names for 'test' and 'train' data 
features <- features[,2]
names(x.test.data)  <- features
names(x.train.data) <- features
names(y.test.data)  <- c("activity")
names(y.train.data) <- c("activity")
names(subject.test.data)    <- c("subject")
names(subject.train.data)   <- c("subject")

# Merge all 'test' data columns together
test.data   <- cbind(subject.test.data, y.test.data, x.test.data)

# Merge all 'train' data columns together
train.data  <- cbind(subject.train.data, y.train.data, x.train.data)

# Merge the 'test' and 'train' datasets together
all.data    <- rbind(test.data, train.data)

# Select only the 'subject', 'activity', 'mean()' and 'std()' 
# columns from the dataset
dataset     <- all.data[grep("(^subject|^activity|mean\\(\\)|std\\(\\))", names(all.data))]

# Clean up data no longer needed from memory
rm(x.test.data, y.test.data, subject.test.data)
rm(x.train.data, y.train.data, subject.train.data)
rm(all.data)
rm(test.data, train.data)

# Clean up activity labels: * Replace underscore ('-') with space
#                           * Make all characters lowercase
activity.labels[,2] <- gsub("_", " ", tolower(activity.labels[,2]))

# Update Activity Labels in the dataset
dataset[,2] <- activity.labels[dataset[,2],2]

# Get the colom names from the dataset
names.dataset <- names(dataset)

# Change the 'f' prefix to 'freq.' for all applicable labels
names.dataset <- gsub("^f", "freq.", names.dataset)

# Change the 't' prefix to 'time.' for all applicable labels
names.dataset <- gsub("^t", "time.", names.dataset)

# Remove the '()' from all applicable labels
names.dataset <- gsub("\\(\\)", "", names.dataset)

# Change '-' to '.' in all applicable labels
names.dataset <- gsub("-", ".", names.dataset)

# Change all label characters to lowercase
names.dataset <- tolower(names.dataset)

# Update all column names in the dataset
names(dataset) <- names.dataset

# Go to the 'data' directory
setwd("..")

# Create a data frame tbl (dplyr)
avg.dataset.tbl <- tbl_df(dataset)

# Group the dataset by 'subject' and 'activity'
avg.dataset.tbl <- group_by(avg.dataset.tbl, subject, activity)

# Create average (mean) on all applicable columns
# in the dataset grouped by 'subject' and 'activity'
avg.dataset.tbl <- summarise_each(avg.dataset.tbl, funs(mean))

# Rename the columns starting with 'time' and 'freq' to
# begin with 'avg.time' and 'avg.freq' and then
# update the dataset
names.dataset.tbl <- names(avg.dataset.tbl)
names.dataset.tbl <- gsub("^time", "avg.time", names.dataset.tbl)
names.dataset.tbl <- gsub("^freq", "avg.freq", names.dataset.tbl)
names(avg.dataset.tbl) <- names.dataset.tbl

# Write the tidy dataset to the textfile 'avg_dataset.txt' on disk
write.table(avg.dataset.tbl, file="avg_dataset.txt", row.names=FALSE)

# Go to the start directory
setwd(work.dir)

# Clean up data no longer needed from memory
rm(activity.labels, names.dataset.tbl)
rm(features, names.dataset, test.dir, train.dir, url.data, work.dir)

# Print a message to the screen
cat("dataset loaded (step 4)\n")
cat("avg.dataset.tbl dataset loaded (step 5)\n")
cat("output also written to textfile 'avg_dataset.txt'")

