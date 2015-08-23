run_analysis codebook.

The purpose is to show my ability to collect, work with, and clean a data set.

Setup, there is a list of test data that was done to determine human activity using a smartphone device.  The link to the project is: 
http://archive.ics.uci.edu/ml/datsets/Human+Activity+Recognition+Using+Smartphones
and the data for analysis is here:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The test and merged data was combined and condensed to only the mean and standard deviation of the measurements from the test device.

Raw data is: Activity, and means for the following X, Y, and Z measurements:
tBodyAcc
tGravityAcc
tBodyAccJerk
tBodyGyro
tBodyGyroJerk
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc
fBodyAccJerk
fBodyGyro
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

Codebook: The measurements were pulled from the X file, while activity code was assigned using the Y file for both the test and training test.  The Activity was assigned by associating the activity labels file to the activity code.  Then only the mean and std deviation measurements were extracted.  The final result was a grouping of activity and their mean measurements.
