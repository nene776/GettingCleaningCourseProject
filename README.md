# GettingCleaningCourseProject

The purpose of this project is to demonstrate our ability to collect, work with, and clean a data set.

One of the most exciting areas in all of data science right now is wearable computing. Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

Our aim was create one R script called run_analysis.R that creates a tidy data set with the average of each variable for each activity and each subject. More exaclty, as it's witten directly into the script comments, run_analysis.R does the following:

0.1.Downloads and unzips the files into the ./data directory (and creates it if it doesn't exist).

0.2.Loads all the useful data from the downloaded files.

1.Merges the training and the test sets to create one data set (called "totalData").

2.Extracts only the measurements on the mean and standard deviation for each measurement. 

3.Uses descriptive activity names to name the activities in the data set.
I use a little bit of syntactic sugar here, but it works! Activities in "littleData" set are coded with numbers, every number corresponds to a row in the "activities" set, using a vectoralized assignment we fullfill the task.

4.Appropriately labels the data set with descriptive variable names. 
Already done! During the 1st step we have already labeled the "totalData": the action of extracting columns from that one has kept also the variable names.
Remark: I choose not to reshape the variable names, like using "time" for "t" or "freq" for "f", because I think the names are already descriptive and enough long. However, a good data set is always accompanied by a code book.

5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
I use the dplyr package to perform this task: I transform "littleData" set into a data frame table (df object), I use group_by and summarise_each functions, and I save the result into an eternal txt file.
