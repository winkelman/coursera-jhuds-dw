# Getting and Cleaning Data

This is the final project for the [Getting and Cleaning Data](https://www.coursera.org/learn/data-cleaning) course of Coursera's [Data Science Specialization](https://www.coursera.org/specializations/jhu-data-science) from John Hopkins University.  The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set.  The goal is to prepare [tidy data](http://vita.had.co.nz/papers/tidy-data.pdf) that can be used for later analysis.

##### Specifications
The dataset used is the "Human Activity Recognition Using Smartphones Data Set" from the [UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).  The script used to create the tidy dataset is `run_analysis.R` and does the following:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set (linked from another table).
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

There are 3 different R scripts in this repository:
- `get_data.R` contains a function to download and extract the dataset
- `inspect_data.R` used to inspect the format of the features data
- `run_analysis.R` used to create the tidy dataset

To recreate the tidy dataset, clone this repository and run the `run_analysis.R` from the command line (with `Rscript run_analysis.R`) or from the R console.
