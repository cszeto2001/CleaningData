Following is the code book for tidy data set.  Below are the variables (column) and a brief description 
for each variable.  The tidy data set is based on the raw data from following web site, 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
Following URL contains a full description of the data, http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Basically this tidy data set extract the column for the mean value and standard deviation for the variables.  
Then we will calculate the mean value for these columns.  Since there is 30 subjects and each subject has 6
activities each, there is a total of 180 row in the tidy data set.


VARIABLE (COLUMN) NAMES:
"Subject" – Volunteer Number and use to indicate which volunteer.  The range of the value is from 1 to 30.
"Activity" – Type of activities that the volunteer performs.  The range of the value is from 1 to 6.   Each code indicate the type of activity 
     1 -  WALKING
     2 - WALKING_UPSTAIRS
     3 - WALKING_DOWNSTAIRS
     4 -  SITTING
     5 -  STANDING
     6 -  LAYING
"tBodyAcc-mean()-X" - mean value for the mean of the body acceleration in X-axis direction
"tBodyAcc-mean()-Y" - mean value for the mean of the body acceleration in Y-axis direction
"tBodyAcc-mean()-Z" -  mean value for the mean of the body acceleration in Z-axis direction
"tBodyAcc-std()-X" – mean value for the standard deviation of the body acceleration in X-axis direction
"tBodyAcc-std()-Y" - mean value for the standard deviation of the body acceleration in Y-axis direction
 "tBodyAcc-std()-Z" - mean value for the standard deviation of the body acceleration in Z-axis direction
"tGravityAcc-mean()-X"  mean value for the mean of gravity acceleration signals in X-axis direction
 "tGravityAcc-mean()-Y" - mean value for the mean of gravity acceleration signals in Y-axis direction-
"tGravityAcc-mean()-Z" - mean value for the mean of gravity acceleration signals in Z-axis direction-
 "tGravityAcc-std()-X" - mean value for the standard deviation of gravity acceleration signals in X-axis direction-
 "tGravityAcc-std()-Y" - mean value for the standard deviation of gravity acceleration signals in Y-axis direction-
"tGravityAcc-std()-Z" - mean value for the standard deviation of gravity acceleration signals in Z-axis direction-
"tBodyAccJerk-mean()-X" – mean value for the mean for body linear acceleration in X-axis direction
 "tBodyAccJerk-mean()-Y" - mean value for the mean for body linear acceleration in Y-axis direction
 "tBodyAccJerk-mean()-Z" - mean value for the mean for body linear acceleration in Z-axis direction
"tBodyAccJerk-std()-X" - mean value for the standard deviation for body linear acceleration in X-axis
"tBodyAccJerk-std()-Y" - mean value for the standard deviation for body linear acceleration in Y-axis
"tBodyAccJerk-std()-Z" - mean value for the standard deviation for body linear acceleration in Y-axis
"tBodyGyro-mean()-X" - mean value for the mean for gyroscope raw signal in X-axis direction
"tBodyGyro-mean()-Y" - mean value for the mean for gyroscope raw signal in Y-axis direction
"tBodyGyro-mean()-Z" - mean value for the mean for gyroscope raw signal in Z-axis direction
 "tBodyGyro-std()-X" - mean value for the standard deviation for gyroscope raw signal in X-axis direction
"tBodyGyro-std()-Y" -  mean value for the standard deviation for gyroscope raw signal in Y-axis direction

"tBodyGyro-std()-Z" - mean value for the standard deviation for gyroscope raw signal in Z-axis direction
"tBodyGyroJerk-mean()-X" - mean value for the mean for angular velocity in X-axis direction
 "tBodyGyroJerk-mean()-Y" - mean value for the mean for angular velocity in Y-axis direction
"tBodyGyroJerk-mean()-Z" - mean value for the mean for angular velocity in Z-axis direction
"tBodyGyroJerk-std()-X" - mean value for the standard deviation for angular velocity in X-axis direction
"tBodyGyroJerk-std()-Y" -  mean value for the standard deviation for angular velocity in Y-axis direction
"tBdyGyroJerk-std()-Z" - mean value for the standard deviation for angular velocity in Z-axis direction
"tBodyAccMag-mean()" – mean value for the mean for the magnitude of body acceleration 
“mean()" – mean value for the mean
"tGravityAccMag-std()" - mean value for the standard deviation for the magnitude of gravity acceleration
"tBodyAccJerkMag-mean()" - mean value for the mean for the magnitude of body linear acceleration
"tBodyAccJerkMag-std()" - mean value for the standard deviation for the magnitude of body linear acceleration
"tBodyGyroMag-mean()"- mean value for the mean for the magnitude of gyroscope raw signal
 "tBodyGyroMag-std()" - mean value for the standard deviation for the magnitude of gyroscope raw signal
"tBodyGyroJerkMag-mean()" - mean value for the mean for the magnitude of angular velocity 
"tBodyGyroJerkMag-std()" - mean value for the standard deviation for the magnitude of angular velocity
"fBodyAcc-mean()-X" - mean value for the mean of the frequency domain signals for body acceleration in X-axis direction

"fBodyAcc-mean()-Y" - mean value for the mean of the frequency domain signals for body acceleration in Y-axis direction
"fBodyAcc-mean()-Z" - mean value for the mean of the frequency domain signals for body acceleration in Z-axis direction 
"fBodyAcc-std()-X" - mean value for the standard deviation of the frequency domain signals of body acceleration in X-axis direction
"fBodyAcc-std()-Y" - mean value for the standard deviation of the frequency domain signals of body acceleration in Y-axis direction
"fBodyAcc-std()-Z" - mean value for the standard deviation of the frequency domain signals of body acceleration in Z-axis direction
"fBodyAccJerk-mean()-X" - mean value for the mean of the frequency domain signals for body linear acceleration in X-axis direction
"fBodyAccJerk-mean()-Y" - mean value for the mean of the frequency domain signals for body linear acceleration in Y-axis direction
"fBodyAccJerk-mean()-Z" - mean value for the mean of the frequency domain signals for body linear acceleration in Z-axis direction
"fBodyAccJerk-std()-X" - mean value for the standard deviation of the frequency domain signals for body linear acceleration in X-axis direction
"fBodyAccJerk-std()-Y" - mean value for the standard deviation of the frequency domain signals for body linear acceleration in Y-axis direction
"fBodyAccJerk-std()-Z" - mean value for the standard deviation of the frequency domain signals for body linear acceleration in Y-axis direction
"fBodyGyro-mean()-X" - mean value for the mean of the frequency domain signals for gyroscope raw signal in X-axis direction
"fBodyGyro-mean()-Y" - mean value for the mean of the frequency domain signals for gyroscope raw signal in Y-axis direction
"fBodyGyro-mean()-Z" - mean value for the mean of the frequency domain signals for gyroscope raw signal in Z-axis direction
"fBodyGyro-std()-X" - mean value for the standard deviation of the frequency domain signals for gyroscope raw signal in X-axis direction
"fBodyGyro-std()-Y" - mean value for the standard deviation of the frequency domain signals for gyroscope raw signal in Y-axis direction
"fBodyGyro-std()-Z" - mean value for the standard deviation of the frequency domain signals for gyroscope raw signal in Z-axis direction
"fBodyAccMag-mean()" - mean value for the mean of the frequency domain signals for the magnitude of body acceleration
"fBodyAccMag-std()" - mean value for the standard deviation of the frequency domain signals for the magnitude of body acceleration
"fBodyBodyAccJerkMag-mean()" - - mean value for the mean of the frequency domain signals for the magnitude of body linear acceleration
"fBodyBodyAccJerkMag-std()" - mean value for the standard deviation of the frequency domain signals for the magnitude of body linear acceleration
"fBodyBodyGyroMag-mean()" - mean value for the mean of the frequency domain signals for the magnitude of gyroscope raw signal
"fBodyBodyGyroMag-std()" - mean value for the standard of the frequency domain signals for the magnitude of gyroscope raw signal
"fBodyBodyGyroJerkMag-mean()" - mean value for the mean of the frequency domain signals for the magnitude of angular velocity
"fBodyBodyGyroJerkMag-std()"-mean value for the standard deviation of the frequency domain signals for the magnitude of angular velocity
