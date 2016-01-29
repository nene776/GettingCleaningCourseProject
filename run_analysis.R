## Daniele Rusconi, Getting and Cleaning Data Course Project


## 0.1.Downloads and unzips the files into the ./data directory.
if(!file.exists("./data")){dir.create("./data")}
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
if(!file.exists("./data/ex.zip")){download.file(url, destfile = "./data/ex.zip")}
unzip("./data/ex.zip", exdir = "./data")

## 0.2.Loads all the useful data.
xtest <- read.table("./data/UCI HAR Dataset/test/X_test.txt")
ytest <- read.table("./data/UCI HAR Dataset/test/y_test.txt")
subjecttest <- read.table("./data/UCI HAR Dataset/test/subject_test.txt")
xtrain <- read.table("./data/UCI HAR Dataset/train/X_train.txt")
ytrain <- read.table("./data/UCI HAR Dataset/train/y_train.txt")
subjecttrain <- read.table("./data/UCI HAR Dataset/train/subject_train.txt")
features <- read.table("./data/UCI HAR Dataset/features.txt")
activities <- read.table("./data/UCI HAR Dataset/activity_labels.txt")

## 1.Merges the training and the test sets to create one data set.
t1 <- cbind(subjecttest, ytest, xtest)
t2 <- cbind(subjecttrain, ytrain, xtrain)
totalData <- rbind(t1, t2)
colnames(totalData) <- c("Subject", "Activity", as.vector(features$V2))

## 2.Extracts only the measurements on the mean and standard deviation for each measurement. 
ind <- grep("mean|std", features$V2)
ind <- ind+2
littleData <- totalData[, c(1, 2, ind)]

## 3.Uses descriptive activity names to name the activities in the data set.
## I use a little bit of syntactic sugar here, but it works! Activities in "littleData" set are 
## coded with numbers, every number corresponds to a row in the "activities" set, using a vectoralized
## assignment we fullfill the task.
littleData$Activity <- activities[littleData$Activity,2]

## 4.Appropriately labels the data set with descriptive variable names. 
## Already done! During the 1st step we have already labeled the "totalData": the action of 
## extracting columns from that one has kept also the variable names.
## Remark: I choose not to reshape the variable names, like using "time" for "t" or "freq" for "f", because
## I think the names are already descriptive and enough long. However, a good data set is always 
## accompanied by a code book.

## 5.From the data set in step 4, creates a second, independent tidy data set with the average 
## of each variable for each activity and each subject.
## I use the dplyr package to perform this task: I transform "littleData" set into a data frame table 
## (df object), I use group_by and summarise_each functions, and I save the result into a normal data frame.
if(!"dplyr" %in% installed.packages()){install.packages("dplyr")}
library(dplyr)
littleDf <- tbl_df(littleData)
grouped <- group_by(littleDf, Activity, Subject)
tidyDf <- summarise_each(grouped, funs(mean))
tidyData <- data.fame(tidyDf)
write.table(tidyData, file = "./data/UCI HAR Dataset/tidyData.txt", row.names = FALSE)
