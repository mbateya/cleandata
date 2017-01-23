setwd("./Desktop/cleandata/")
library(tidyverse)
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url, method = "curl", destfile = "activity.zip")
unzip("activity.zip")
labels <- read.table("./UCI HAR Dataset/activity_labels.txt",col.names = c("activityCode","activityName"))
features <- read.table("./UCI HAR Dataset/features.txt",col.names = c("featureNumber","featureName"))
trainSubjects <- read.table("./UCI HAR Dataset/train/subject_train.txt", col.names = c("subject"))
trainMeasurments <- read.table("./UCI HAR Dataset/train/X_train.txt", col.names = features$featureName)
trainActivity <- read.table("./UCI HAR Dataset/train/y_train.txt", col.names = c("activityCode"))
testSubjects <- read.table("./UCI HAR Dataset/test/subject_test.txt", col.names = c("subject"))
testMeasurments <- read.table("./UCI HAR Dataset/test/X_test.txt", col.names = features$featureName)
testActivity <- read.table("./UCI HAR Dataset/test/y_test.txt", col.names = c("activityCode"))
trainData <- cbind(trainActivity,trainSubjects,trainMeasurments)
testData <- cbind(testActivity,testSubjects,testMeasurments)
combData <- rbind(trainData,testData)
combData <- merge(labels,combData,by = "activityCode", all = TRUE)
newData <- combData[,c(2:3,grep(".mean[.]|.std",colnames(combData)))]
meanbyactivitysubject <- newData %>% group_by(activityName,subject) %>% summarize_each(funs(mean))


