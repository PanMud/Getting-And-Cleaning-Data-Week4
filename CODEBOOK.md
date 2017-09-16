# Getting and Cleaning Data Week4 Assignment

The purpose of this assignment is to demonstrate the ability to collect, work with, and clean a data set. The goal is to prepare 
tidy data that can be used for later analysis.

### Input:

The Assignment is based on data collected from the accelerometers from the Samsung Galaxy S smartphone. Full description of the 
dataset is available at the website(link below) where the data was obtained:

  http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

### Processing Steps:

  - Set the path of the data files. 
  - Read the data set from the files as data tables
  - Combine the Train and Test data tables
  - Subselect the mean and std deviation measures as a new table
  - Add Descriptive activity name as a column
  - Combine the measures, activity and subjects to create a combine data table

### Output:

  - Create the tidy_data data table with the average of each variable for each activity and each subject
  - Write the tidy_data data table to a file (tidy_data.txt) 



#### Tidy dataset description:

Tidy data contains 180 rows and 68 columns. Each row has averaged variables for each subject and each activity.
Only the measurements that were either the mean or std (standard deviation) are part of the tidy data set.

subject column is numbered sequentially from 1 to 30. 

activityname column has 6 values as listed below.

    WALKING
    WALKING_UPSTAIRS
    WALKING_DOWNSTAIRS
    SITTING
    STANDING
    LAYING

Following are the columns of the tidy data table:

    "activityname"
    "subject"
    "tBodyAcc-mean()-X"
    "tBodyAcc-mean()-Y"
    "tBodyAcc-mean()-Z"
    "tBodyAcc-std()-X"
    "tBodyAcc-std()-Y"
    "tBodyAcc-std()-Z"
    "tGravityAcc-mean()-X"
    "tGravityAcc-mean()-Y"
    "tGravityAcc-mean()-Z"
    "tGravityAcc-std()-X"
    "tGravityAcc-std()-Y"
    "tGravityAcc-std()-Z"
    "tBodyAccJerk-mean()-X"
    "tBodyAccJerk-mean()-Y"
    "tBodyAccJerk-mean()-Z"
    "tBodyAccJerk-std()-X"
    "tBodyAccJerk-std()-Y"
    "tBodyAccJerk-std()-Z"
    "tBodyGyro-mean()-X"
    "tBodyGyro-mean()-Y"
    "tBodyGyro-mean()-Z"
    "tBodyGyro-std()-X"
    "tBodyGyro-std()-Y"
    "tBodyGyro-std()-Z"
    "tBodyGyroJerk-mean()-X"
    "tBodyGyroJerk-mean()-Y"
    "tBodyGyroJerk-mean()-Z"
    "tBodyGyroJerk-std()-X"
    "tBodyGyroJerk-std()-Y"
    "tBodyGyroJerk-std()-Z"
    "tBodyAccMag-mean()"
    "tBodyAccMag-std()"
    "tGravityAccMag-mean()"
    "tGravityAccMag-std()"
    "tBodyAccJerkMag-mean()"
    "tBodyAccJerkMag-std()"
    "tBodyGyroMag-mean()"
    "tBodyGyroMag-std()"
    "tBodyGyroJerkMag-mean()"
    "tBodyGyroJerkMag-std()"
    "fBodyAcc-mean()-X"
    "fBodyAcc-mean()-Y"
    "fBodyAcc-mean()-Z"
    "fBodyAcc-std()-X"
    "fBodyAcc-std()-Y"
    "fBodyAcc-std()-Z"
    "fBodyAccJerk-mean()-X"
    "fBodyAccJerk-mean()-Y"
    "fBodyAccJerk-mean()-Z"
    "fBodyAccJerk-std()-X"
    "fBodyAccJerk-std()-Y"
    "fBodyAccJerk-std()-Z"
    "fBodyGyro-mean()-X"
    "fBodyGyro-mean()-Y"
    "fBodyGyro-mean()-Z"
    "fBodyGyro-std()-X"
    "fBodyGyro-std()-Y"
    "fBodyGyro-std()-Z"
    "fBodyAccMag-mean()"
    "fBodyAccMag-std()"
    "fBodyBodyAccJerkMag-mean()"
    "fBodyBodyAccJerkMag-std()"
    "fBodyBodyGyroMag-mean()"
    "fBodyBodyGyroMag-std()"
    "fBodyBodyGyroJerkMag-mean()"
    "fBodyBodyGyroJerkMag-std()"


activityname is a factor type variable. subject variable is integer type variable. All the other variables are numeric type.
