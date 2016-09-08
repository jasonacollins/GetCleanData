# Load required packages
library(reshape2)

# Download data file from website and unzip
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", destfile = "Assign1.zip", method = "curl")
unzip("Assign1.zip")

# Change to unzipped data directory
setwd("UCI HAR Dataset")

# Import test and train data
X_test <- read.table("test/X_test.txt")
y_test <- read.table("test/y_test.txt")
subject_test <- read.table("test/subject_test.txt")
X_train <- read.table("train/X_train.txt")
y_train <- read.table("train/y_train.txt")
subject_train <- read.table("train/subject_train.txt")

# Assigment requirement 1: Merges the training and the test sets to create one data set.
merged <- rbind(cbind(X_test, y_test, subject_test), cbind(X_train, y_train, subject_train))

# Import features names, name columns in merged data
features <- as.vector(read.table("features.txt")[,2])
colnames(merged) <- c(features, "id", "subject")

# Assignment requirement 2: Extracts only the measurements on the mean and standard deviation for each measurement.
# Note need to retain activity and subject columns. Angle names are specifically excluded.
reduced <- merged[,c(grep("mean|std", colnames(merged)), 562:563)]

# Assignment requirement 3: Uses descriptive activity names to name the activities in the data set
# Do this by importing activity names, merging with test and train data
activity <- read.table("activity_labels.txt")
colnames(activity) <- c("id", "activity")
reduced <- merge(reduced, activity, by = "id", sort=FALSE)[,2:82] #Omits first column so does not include the id

# Assignment requirement 4: Appropriately labels the data set with descriptive variable names
# Do this by cleaning extraneous symbols/words and capitalising to improve readability
colnames(reduced) <- gsub("\\(\\)", "", colnames(reduced))
colnames(reduced) <- gsub("-", "", colnames(reduced))
colnames(reduced) <- gsub("BodyBody", "Body", colnames(reduced))
colnames(reduced) <- gsub("mean", "Mean", colnames(reduced))
colnames(reduced) <- gsub("std", "Std", colnames(reduced))

# Assignment requirement 5: creates a second, independent tidy data set with the average of each variable for each activity and each subject
melted <- melt(reduced, id=c("subject","activity"))
tidy <- dcast(melted, subject + activity ~ variable, mean)

# Export the data to a txt file
write.table(tidy, "tidy.txt", row.name=FALSE)
