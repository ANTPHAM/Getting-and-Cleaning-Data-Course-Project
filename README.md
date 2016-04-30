# Getting-and-Cleaning-Data-Course-Project/ DESCRIPTION

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

You should create one R script called run_analysis.R that does the following.

Merges the training and the test sets to create one data set.
Extracts only the measurements on the mean and standard deviation for each measurement.
Uses descriptive activity names to name the activities in the data set
Appropriately labels the data set with descriptive variable names.
From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

# FILES IN THIS REPOSITORY

README.md : you are here right now
CodeBook.md :codebook describing variables, the data and transformations
run_analysis.R :  R scrip file  for the analysis
mean_tidy_data.txt: an output of the analysis

# STEPS FOR DOING THIS PROJECT

- Open a R scrip file named run_analysis.R and download the data in .zip format from "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip" and then unzip and load into R.
- Make sure the folder named "UCI HAR Dataset" is in the current directory.
- Edit R code to produce the analysis required:
1.Merges the training and the test sets to create one data set: by reading and combinating rows of two files: "X_train.txt" and "X_test.txt"; the output is a data frame called "Mergdat" having 10299 obs. of  561 variables.

2.Extracts only the measurements on the mean and standard deviation for each measurement:read  and find in "features.txt" file to get the features mesured by the mean or  standard deviation; extract from "Mergedat" a subset by the features founded; the data frame "Mergedat" now has 10299 obs. of  66 variables.

3.Uses descriptive activity names to name the activities in the data set: read and merge by rows two data frames in "y_train.txt" and "y_test.txt"; the output is a data frame "MergedatActivity"( 10299x1) which shows only the code for each activity; change the name of the column and merge it with "Mergedat" ; read the "activity_labels.txt" which shows descriptive activity names and replace the activities code numbers in "Mergedat".

4.Appropriately labels the data set with descriptive variable names: combine by row data from "subject_train.txt" and "subject_test.txt" files; change the name of the new feature; combine the output by column with "Mergedat" data frame.

5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject: create and write out the "mean_tidy_data.txt" from "Mergedat" data set.

