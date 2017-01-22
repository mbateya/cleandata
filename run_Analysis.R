setwd("./Desktop/cleandata/")
library(tidyverse)
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url, method = "curl", destfile = "activity.zip")
unzip("activity.zip")
activity <- read.csv("./UCI HAR Dataset/")