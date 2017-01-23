###The R-script "runAnalysis.R":
================================  
1 - downloads the training and test data sets for the "Human Activity Recognition Using Smartphones" from the link: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip  
2- unzips the downloaded file to directory "./cleandata/"  
3- Reads the training and test data measurements files ("X_train.txt" and "X_test.txt") 
4- Adds descriptive names to the columns of the data sets from the features file ("features.txt")  
5- appends the columns of the data sets with the activity code from the file ("y_train.txt", "y_test.txt"), activity name, subject who performed the activity  
6- Merges test and training data sets  
7- Only selects the variables representing "mean" or "standard deviation" of the measured features in addition to activity name and subject number:  
activityName  
subject  
tBodyAcc.mean...X  
tBodyAcc.mean...Y  
tBodyAcc.mean...Z  
tBodyAcc.std...X  
tBodyAcc.std...Y  
tBodyAcc.std...Z  
tGravityAcc.mean...X  
tGravityAcc.mean...Y  
tGravityAcc.mean...Z  
tGravityAcc.std...X  
tGravityAcc.std...Y  
tGravityAcc.std...Z  
tBodyAccJerk.mean...X  
tBodyAccJerk.mean...Y  
tBodyAccJerk.mean...Z  
tBodyAccJerk.std...X  
tBodyAccJerk.std...Y  
tBodyAccJerk.std...Z  
tBodyGyro.mean...X  
tBodyGyro.mean...Y  
tBodyGyro.mean...Z  
tBodyGyro.std...X  
tBodyGyro.std...Y  
tBodyGyro.std...Z  
tBodyGyroJerk.mean...X  
tBodyGyroJerk.mean...Y  
tBodyGyroJerk.mean...Z  
tBodyGyroJerk.std...X  
tBodyGyroJerk.std...Y  
tBodyGyroJerk.std...Z  
tBodyAccMag.mean..  
tBodyAccMag.std..  
tGravityAccMag.mean..  
tGravityAccMag.std..  
tBodyAccJerkMag.mean..  
tBodyAccJerkMag.std..  
tBodyGyroMag.mean..  
tBodyGyroMag.std..  
tBodyGyroJerkMag.mean..  
tBodyGyroJerkMag.std..  
fBodyAcc.mean...X  
fBodyAcc.mean...Y  
fBodyAcc.mean...Z  
fBodyAcc.std...X  
fBodyAcc.std...Y  
fBodyAcc.std...Z  
fBodyAccJerk.mean...X  
fBodyAccJerk.mean...Y  
fBodyAccJerk.mean...Z  
fBodyAccJerk.std...X  
fBodyAccJerk.std...Y  
fBodyAccJerk.std...Z  
fBodyGyro.mean...X  
fBodyGyro.mean...Y  
fBodyGyro.mean...Z  
fBodyGyro.std...X  
fBodyGyro.std...Y  
fBodyGyro.std...Z  
fBodyAccMag.mean..  
fBodyAccMag.std..  
fBodyBodyAccJerkMag.mean..  
fBodyBodyAccJerkMag.std..  
fBodyBodyGyroMag.mean..  
fBodyBodyGyroMag.std..  
fBodyBodyGyroJerkMag.mean..  
fBodyBodyGyroJerkMag.std..  
8- Calculates averages of each of the above selected variables for each activity and subject  

