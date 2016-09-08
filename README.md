#Getting and Cleaning Data Course Project

This repo contains the outputs from the Getting and Cleaning Data course project. The purpose of the project is to demonstrate ability to collect, work with, and clean a data set, using data collected from the accelerometers of a Samsung Galaxy S smartphone.

This repo contains:

* An R script - `run_analysis.R` - to produce a tidy data set from the original files
* A code book describing the variables in the data set
* The output of `run_analysis.R`, `tidy.txt`

The R script, `run_analysis.R`, does the following:

1. Loads the required packages
2. Downloads the data file and unzips
3. Imports the test and train data
4. Merges the training and the test sets to create one data set (*Assignment requirement 1*)
5. Import features names and names the columns in the merged data
6. Extracts the measurements on the mean and standard deviation for each measurement (*Assignment requirement 2*)
7. Uses descriptive activity names to name the activities in the data set by importing activity names, and merging with test and train data (*Assignment requirement 3*)
8. Appropriately labels the data set with descriptive variable names, by cleaning extraneous symbols/words and capitalising to improve readability (*Assignment requirement 4*)
9. Creates a second, independent tidy data set with the average for each activity and each subject (*Assignment requirement 5*)
10. Exports the data to a txt file