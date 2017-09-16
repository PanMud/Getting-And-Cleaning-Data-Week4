## run_analysis.R  - Script for Week4 submission of Getting and Cleaning Data course
## September 2017

library(dplyr)
library(data.table)

# This script,run_analysis.R, does the following.
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names.
# 5. From the data set in step 4, creates a second, independent tidy data set with 
#    the average of each variable for each activity and each subject.


#Set the path of the data files.  The data files have been unzipped in the following directory path.

data_location = "./UCI_HAR_Dataset/"

# If the data files location is not valid then exit with a message

if(!file.exists(data_location)){
  return( paste0("please check that the data files are unzipped at the following location", data_location ))
}

#read features and activity labels file
features<-read.table(paste0(data_location, "features.txt"),header=FALSE)
activity_names<-read.table(paste0(data_location,"activity_labels.txt"), header=FALSE)


#Read the data files in the folder with read.table

# Training Data Sets
measures_train<-read.table(paste0(data_location,"train/X_train.txt"),header=FALSE)
activity_train<-read.table(paste0(data_location,"train/Y_train.txt"),header=FALSE)
subjects_train<-read.table(paste0(data_location,"train/subject_train.txt"),header=FALSE)

# Test Data Sets
measures_test<-read.table(paste0(data_location,"test/X_test.txt"),header=FALSE)
activity_test<-read.table(paste0(data_location,"test/Y_test.txt"),header=FALSE)
subjects_test<-read.table(paste0(data_location,"test/subject_test.txt"),header=FALSE)


## Merges the training and the test sets individually (measures, subjects, activities) 

measures_comb <- rbind(measures_train, measures_test)
subjects_comb <- rbind(subjects_train, subjects_test)
activity_comb <- rbind(activity_train, activity_test)


#rename columns in features data
names(measures_comb) <-features$V2
#rename columns in activity data
names(activity_comb) <-"activity"
#rename columns in subject data
names(subjects_comb)<-"subject"

# Extracts only the measurements on the mean and standard deviation for each measurement
# Find the MEAN or STD columns in the features data set and subselect the data
meanstd_cols <- features[grep("mean\\(\\)|std\\(\\)",features[,2]),]
measures_comb <- measures_comb[,meanstd_cols[,1]] 

# Descriptive activity name
activity_comb$activityname <- factor(activity_comb$activity, labels = as.character(activity_names[,2]))
activityname <- activity_comb[,-1]


# From the data set above, create tidy data set with the average
# of each variable for each activity and each subject.

all_comb_data <- cbind(measures_comb, activityname, subjects_comb)
tidy_data <- all_comb_data %>% group_by(activityname, subject) %>% summarize_all(funs(mean))

# Write the tidy data to a file named tidydata.txt 
write.table(tidy_data, file = paste0(data_location, "tidydata.txt"), row.names = FALSE, col.names = TRUE)

