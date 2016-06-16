
library(dplyr)
library(readr)

## Download/Import Data
source("get_data.R")
get_uci_har_data()
list.files("uci-har-data")
list.files("uci-har-data/train")
list.files("uci-har-data/test")



##1 Merge the training and the test sets to create one data set.

# feature names of train and test sets
column_names <- read_table("uci-har-data/features.txt", col_names = FALSE)
column_names <- unlist(column_names)

# training data
df_train_subjects <- read_table("uci-har-data/train/subject_train.txt",
                               col_names = "subject_number")
df_train_features <- read_table("uci-har-data/train/X_train.txt",
                             col_names = column_names)
df_train_labels <- read_table("uci-har-data/train/y_train.txt",
                              col_names = "activity_number")
# training data composite
df_train <- bind_cols(df_train_subjects, df_train_labels, df_train_features)
rm(df_train_subjects); rm(df_train_features); rm(df_train_labels)

# test data
df_test_subjects <- read_table("uci-har-data/test/subject_test.txt",
                                col_names = "subject_number")
df_test_features <- read_table("uci-har-data/test/X_test.txt",
                                col_names = column_names)
df_test_labels <- read_table("uci-har-data/test/y_test.txt",
                              col_names = "activity_number")
# test data composite
df_test <- bind_cols(df_test_subjects, df_test_labels, df_test_features)
rm(df_test_subjects); rm(df_test_features); rm(df_test_labels)

# combine train and test sets
df_complete <- bind_rows(df_train, df_test)
rm(df_train); rm(df_test)



##2 Extract only the measurements on the mean and standard deviation for each measurement.

column_names <- names(df_complete)
idx_keep_names <- grep("([Mm]ean|std)", column_names)
#column_names[idx_keep_names]
# keep subjects and activity number (columns 1 and 2)
idx_keep_names <- c(1:2, idx_keep_names)
df_mean_and_std <- df_complete[, idx_keep_names]



##3 Uses descriptive activity names to name the activities in the data set.

# activities data
activity_names <- c("activity_number", "activity_name")
df_activities <- read_table("uci-har-data/activity_labels.txt",
                            col_names = activity_names)

# separate features and subject/labels from dataframe to match activity names
df_features <- df_mean_and_std[, 3:ncol(df_mean_and_std)]
df_subjects_and_labels <- df_mean_and_std[, 1:2]
df_subjects_and_labels <- left_join(df_subjects_and_labels, df_activities,
                                    by = "activity_number")
df_subjects_and_labels <- df_subjects_and_labels[, -2]
df_labels <- bind_cols(df_subjects_and_labels, df_features)
rm(df_features); rm(df_subjects_and_labels); rm(df_activities)
rm(df_complete); rm(df_mean_and_std)



##4 Label the data set with descriptive variable names.

column_names <- names(df_labels)
column_names <- gsub("[0-9]+( )+", "", column_names)
column_names <- gsub("-", "_", column_names)
column_names <- gsub("[()]", "_", column_names)
column_names <- tolower(column_names)

column_names <- gsub("^t", "time_", column_names)
column_names <- gsub("^f", "freq_", column_names)
column_names <- gsub("acc", "_acceleration_", column_names)
column_names <- gsub("gyro", "_gyroscope_", column_names)
column_names <- gsub("mag", "_magnitude_", column_names)

column_names <- gsub("bodybody", "body", column_names)
column_names <- gsub("_+$", "", column_names)
column_names <- gsub(",", "_", column_names)
column_names <- gsub("_+", "_", column_names)
column_names <- gsub("_tbody", "_time_body", column_names)

names(df_labels) <- column_names



##5 From the data set in step 4, create a second, independent tidy data set
## with the average of each variable for each activity and each subject.

df_subject_avg <- df_labels %>% group_by(subject_number, activity_name) %>%
    summarise_each(funs(mean))

rm(df_labels)
write.table(df_subject_avg, file = "tidy-data.txt", row.name=FALSE)

