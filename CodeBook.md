## Codebook
### Getting and Cleaning Data Course Project

## TODO
* Point to source data and explanation of source variables (source README.txt)
* Explain why I didn't choose the meanfreq columns in my dataset
* Provide links to additional information
* Describe steps taken in the run_analysis.R file
* Create README.md

GitHub contains a code book that modifies and updates the available codebooks with the data to indicate all the variables and summaries calculated, along with units, and any other relevant information.

A code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md.

### Source data
The source of the data used in this Course Project is the "Human Activity Recognition Using Smartphones Data Set" found in the [UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones). The dataset can be downloaded using this [link](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip). You can also find mirror in this repository ([here](https://github.com/dgroenhof/getting-and-cleaning-data/blob/master/source/UCI_HAR_Dataset.zip)).


### Variables in the Dataset


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
avg.time.bodyaccjerkmag.mean      |Average of *time.bodyaccjerkmag.mean* variable for each *subject/activity* combination
avg.time.bodyaccjerkmag.std       |Average of *time.bodyaccjerkmag.std* variable for each *subject/activity* combination
avg.time.bodygyromag.mean         |Average of *time.bodygyromag.mean* variable for each *subject/activity* combination
avg.time.bodygyromag.std          |Average of *time.bodygyromag.std* variable for each *subject/activity* combination
avg.time.bodygyrojerkmag.mean     |Average of *time.bodygyrojerkmag.mean* variable for each *subject/activity* combination
avg.time.bodygyrojerkmag.std      |Average of *time.bodygyrojerkmag.std* variable for each *subject/activity* combination
avg.freq.bodyacc.mean.x           |Average of *freq.bodyacc.mean.x* variable for each *subject/activity* combination
avg.freq.bodyacc.mean.y           |Average of *freq.bodyacc.mean.y* variable for each *subject/activity* combination
avg.freq.bodyacc.mean.z           |Average of *freq.bodyacc.mean.z* variable for each *subject/activity* combination
avg.freq.bodyacc.std.x            |Average of *freq.bodyacc.std.x* variable for each *subject/activity* combination
avg.freq.bodyacc.std.y            |Average of *freq.bodyacc.std.y* variable for each *subject/activity* combination
avg.freq.bodyacc.std.z            |Average of *freq.bodyacc.std.z* variable for each *subject/activity* combination
avg.freq.bodyaccjerk.mean.x       |Average of *freq.bodyaccjerk.mean.x* variable for each *subject/activity* combination
avg.freq.bodyaccjerk.mean.y       |Average of *freq.bodyaccjerk.mean.y* variable for each *subject/activity* combination
avg.freq.bodyaccjerk.mean.z       |Average of *freq.bodyaccjerk.mean.z* variable for each *subject/activity* combination
avg.freq.bodyaccjerk.std.x        |Average of *freq.bodyaccjerk.std.x* variable for each *subject/activity* combination
avg.freq.bodyaccjerk.std.y        |Average of *freq.bodyaccjerk.std.y* variable for each *subject/activity* combination
avg.freq.bodyaccjerk.std.z        |Average of *freq.bodyaccjerk.std.z* variable for each *subject/activity* combination
avg.freq.bodygyro.mean.x          |Average of *freq.bodygyro.mean.x* variable for each *subject/activity* combination
avg.freq.bodygyro.mean.y          |Average of *freq.bodygyro.mean.y* variable for each *subject/activity* combination
avg.freq.bodygyro.mean.z          |Average of *freq.bodygyro.mean.z* variable for each *subject/activity* combination
avg.freq.bodygyro.std.x           |Average of *freq.bodygyro.std.x* variable for each *subject/activity* combination
avg.freq.bodygyro.std.y           |Average of *freq.bodygyro.std.y* variable for each *subject/activity* combination
avg.freq.bodygyro.std.z           |Average of *freq.bodygyro.std.z* variable for each *subject/activity* combination
avg.freq.bodyaccmag.mean          |Average of *freq.bodyaccmag.mean* variable for each *subject/activity* combination
avg.freq.bodyaccmag.std           |Average of *freq.bodyaccmag.std* variable for each *subject/activity* combination
avg.freq.bodybodyaccjerkmag.mean  |Average of *freq.bodybodyaccjerkmag.mean* variable for each *subject/activity* combination
avg.freq.bodybodyaccjerkmag.std   |Average of *freq.bodybodyaccjerkmag.std* variable for each *subject/activity* combination
avg.freq.bodybodygyromag.mean     |Average of *freq.bodybodygyromag.mean* variable for each *subject/activity* combination
avg.freq.bodybodygyromag.std      |Average of *freq.bodybodygyromag.std* variable for each *subject/activity* combination
avg.freq.bodybodygyrojerkmag.mean |Average of *freq.bodybodygyrojerkmag.mean* variable for each *subject/activity* combination
avg.freq.bodybodygyrojerkmag.std  |Average of *freq.bodybodygyrojerkmag.std* variable for each *subject/activity* combination

#####Notes
* The units used for the accelerations (total and body) are 'g's (gravity of earth -> 9.80665 m/seg2).
* The gyroscope units are rad/seg.


```{r}
summary(cars)
```

