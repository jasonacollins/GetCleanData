#Code Book

This Code Book describes the variables contained in `tidy.txt`. `tidy.txt` is a subset of using data collected from the accelerometers of a Samsung Galaxy S smartphone as contained in:

>Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

Further information on the derivation of the original data is available with the [original data download](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

The variables in `tidy.txt` are the mean of the following variables across study subjects and activities:

*tBodyAcc: Body acceleration signal

*tGravityAcc: Gravity acceleration signal

*tBodyAccJerk: Body linear acceleration

*tBodyGyro: Body velocity signal

*tBodyGyroJerk: Body angular velocity

*tBodyAccMag: Magnitude of the body acceleration signal

*tGravityAccMag: Magnitude of the gravity acceleration signal

*tBodyAccJerkMag: Magnitude of body linear acceleration

*tBodyGyroMag: Magnitude of body velocity signal

*tBodyGyroJerkMag: Magnitude of body angular velocity

*fBodyAcc: Fast Fourier Transform of body acceleration signal

*fBodyAccJerk: Fast Fourier Transform of body linear acceleration

*fBodyGyro: Fast Fourier Transform of body velocity signal

*fBodyAccJerkMag: Fast Fourier Transform of magnitude of body linear acceleration

*fBodyGyroMag: Fast Fourier Transform of magnitude of body velocity signal

*fBodyGyroJerkMag: Fast Fourier Transform of magnitude of body angular velocity

An X, Y or Z suffix on the variables denotes 3-axial signals in the X, Y and Z directions. The measurements also contain the suffixes Mean (Mean value) and Std (Standard deviation), being the mean and standard deviation of the original measurements. It is these mean and standard deviation measurements of which the mean has been taken to produce the `tidy.txt` file.
