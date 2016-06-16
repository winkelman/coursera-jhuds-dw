# Getting and Cleaning Data

This is the final project for the [Getting and Cleaning Data](https://www.coursera.org/learn/data-cleaning) course of Coursera's [Data Science Specialization](https://www.coursera.org/specializations/jhu-data-science) from John Hopkins University.  The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set.  The goal is to prepare [tidy data](http://vita.had.co.nz/papers/tidy-data.pdf) that can be used for later analysis.

##### Specifications
The dataset used is the "Human Activity Recognition Using Smartphones Data Set" from the [UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).  As quoted from the readme file of the dataset, it contains measurements from

> experiments that have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

>The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details.

> For each record it is provided:
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope.
- A 561-feature vector with time and frequency domain variables.
- Its activity label.
- An identifier of the subject who carried out the experiment.

The script used to create the tidy dataset is `run_analysis.R` and does the following:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set (linked from another table).
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

There are 3 different R scripts in this repository:
- `get_data.R` contains a function to download and extract the dataset
- `inspect_data.R` used to inspect the format of the features data
- `run_analysis.R` used to create the tidy dataset

To recreate the tidy dataset, clone this repository and run the `run_analysis.R` script from the command line (with `Rscript run_analysis.R`) or from the R console.

The `code-book.md` file contains the code book for the raw data as well as a brief description of the variables in the tidy dataset.
