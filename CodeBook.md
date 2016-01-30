## Codebook
#### Getting and Cleaning Data Course Project


GitHub contains a code book that modifies and updates the available codebooks with the data to indicate all the variables and summaries calculated, along with units, and any other relevant information.

A code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md.

#### Source data
The source of the data used in this Course Project is the "Human Activity Recognition Using Smartphones Data Set" found in the [UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones). The dataset can be downloaded using this [link](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).


#### Variables
Variable                          | Description
----------------------------------|--------------------
subject                           |Identifier for the volunteer (values 1-30)
activity                          |Performed activity (values laying, sitting, standing, walking, walking downstairs, walking upstairs)
avg.time.bodyacc.mean.x           |Average of *time.bodyacc.mean.x* variable for each *subject/activity* combination
avg.time.bodyacc.mean.y           |Average of *time.bodyacc.mean.y* variable for each *subject/activity* combination
avg.time.bodyacc.mean.z           |Average of *time.bodyacc.mean.z* variable for each *subject/activity* combination
avg.time.bodyacc.std.x            |Average of *time.bodyacc.std.x* variable for each *subject/activity* combination
avg.time.bodyacc.std.y            |Average of *time.bodyacc.std.y* variable for each *subject/activity* combination
avg.time.bodyacc.std.z            |Average of *time.bodyacc.std.z* variable for each *subject/activity* combination
avg.time.gravityacc.mean.x        |Average of *time.gravityacc.mean.x* variable for each *subject/activity* combination
avg.time.gravityacc.mean.y        |Average of *time.gravityacc.mean.y* variable for each *subject/activity* combination
avg.time.gravityacc.mean.z        |Average of *time.gravityacc.mean.z* variable for each *subject/activity* combination
avg.time.gravityacc.std.x         |Average of *time.gravityacc.std.x* variable for each *subject/activity* combination
avg.time.gravityacc.std.y         |Average of *time.gravityacc.std.y* variable for each *subject/activity* combination
avg.time.gravityacc.std.z         |Average of *time.gravityacc.std.z* variable for each *subject/activity* combination
avg.time.bodyaccjerk.mean.x       |Average of *time.bodyaccjerk.mean.x* variable for each *subject/activity* combination
avg.time.bodyaccjerk.mean.y       |Average of *time.bodyaccjerk.mean.y* variable for each *subject/activity* combination
avg.time.bodyaccjerk.mean.z       |Average of *time.bodyaccjerk.mean.z* variable for each *subject/activity* combination
avg.time.bodyaccjerk.std.x        |Average of *time.bodyaccjerk.std.x* variable for each *subject/activity* combination
avg.time.bodyaccjerk.std.y        |Average of *time.bodyaccjerk.std.y* variable for each *subject/activity* combination
avg.time.bodyaccjerk.std.z        |Average of *time.bodyaccjerk.std.z* variable for each *subject/activity* combination
avg.time.bodygyro.mean.x          |Average of *time.bodygyro.mean.x* variable for each *subject/activity* combination
avg.time.bodygyro.mean.y          |Average of *time.bodygyro.mean.y* variable for each *subject/activity* combination
avg.time.bodygyro.mean.z          |Average of *time.bodygyro.mean.z* variable for each *subject/activity* combination
avg.time.bodygyro.std.x           |Average of *time.bodygyro.std.x* variable for each *subject/activity* combination
avg.time.bodygyro.std.y           |Average of *time.bodygyro.std.y* variable for each *subject/activity* combination
avg.time.bodygyro.std.z           |Average of *time.bodygyro.std.z* variable for each *subject/activity* combination
avg.time.bodygyrojerk.mean.x      |Average of *time.bodygyrojerk.mean.x* variable for each *subject/activity* combination
avg.time.bodygyrojerk.mean.y      |Average of *time.bodygyrojerk.mean.y* variable for each *subject/activity* combination
avg.time.bodygyrojerk.mean.z      |Average of *time.bodygyrojerk.mean.z* variable for each *subject/activity* combination
avg.time.bodygyrojerk.std.x       |Average of *time.bodygyrojerk.std.x* variable for each *subject/activity* combination
avg.time.bodygyrojerk.std.y       |Average of *time.bodygyrojerk.std.y* variable for each *subject/activity* combination
avg.time.bodygyrojerk.std.z       |Average of *time.bodygyrojerk.std.z* variable for each *subject/activity* combination
avg.time.bodyaccmag.mean          |Average of *time.bodyaccmag.mean* variable for each *subject/activity* combination
avg.time.bodyaccmag.std           |Average of *time.bodyaccmag.std* variable for each *subject/activity* combination
avg.time.gravityaccmag.mean       |Average of *time.gravityaccmag.mean* variable for each *subject/activity* combination
avg.time.gravityaccmag.std        |Average of *time.gravityaccmag.std* variable for each *subject/activity* combination
avg.time.bodyaccjerkmag.mean      |
avg.time.bodyaccjerkmag.std       |
avg.time.bodygyromag.mean         |
avg.time.bodygyromag.std          |
avg.time.bodygyrojerkmag.mean     |
avg.time.bodygyrojerkmag.std      |
avg.freq.bodyacc.mean.x           |
avg.freq.bodyacc.mean.y           |
avg.freq.bodyacc.mean.z           |
avg.freq.bodyacc.std.x            |
avg.freq.bodyacc.std.y            |
avg.freq.bodyacc.std.z            |
avg.freq.bodyaccjerk.mean.x       |
avg.freq.bodyaccjerk.mean.y       |
avg.freq.bodyaccjerk.mean.z       |
avg.freq.bodyaccjerk.std.x        |
avg.freq.bodyaccjerk.std.y        |
avg.freq.bodyaccjerk.std.z        |
avg.freq.bodygyro.mean.x          |
avg.freq.bodygyro.mean.y          |
avg.freq.bodygyro.mean.z          |
avg.freq.bodygyro.std.x           |
avg.freq.bodygyro.std.y           |
avg.freq.bodygyro.std.z           |
avg.freq.bodyaccmag.mean          |
avg.freq.bodyaccmag.std           |
avg.freq.bodybodyaccjerkmag.mean  |
avg.freq.bodybodyaccjerkmag.std   |
avg.freq.bodybodygyromag.mean     |
avg.freq.bodybodygyromag.std      |
avg.freq.bodybodygyrojerkmag.mean |
avg.freq.bodybodygyrojerkmag.std  |



```{r}
summary(cars)
```

