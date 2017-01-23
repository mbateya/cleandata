###The R-script "runAnalysis.R":

1 - downloads the training and test data sets for the "Human Activity Recognition Using Smartphones" from the link: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip  
2- unzips the downloaded file to directory "./cleandata/"  
3- Reads the test and training data measurements files  
4- appends the columns of the data sets with the activity code, activity name, subject who performed the activity  
5- Only selects the variables representing "mean" or "standard deviation" of the measured features  
6- Calculates average of each of the selected features for each activity and subject  

