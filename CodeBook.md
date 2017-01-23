###The R-script "runAnalysis.R":
================================  
1 - downloads the training and test data sets for the "Human Activity Recognition Using Smartphones" from the link: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip  
2- unzips the downloaded file to directory "./cleandata/"  
3- Reads the training and test data measurements files ("X_train.txt" and "X_test.txt") 
4- Adds descriptive names to the columns of the data sets from the features file ("features.txt")  
5- appends the columns of the data sets with the activity code from the file ("y_train.txt", "y_test.txt"), activity name, subject who performed the activity  
6- Merges test and training data sets
7- Only selects the variables representing "mean" or "standard deviation" of the measured features  
8- Calculates average of each of the selected features for each activity and subject  

