
## This script was used to explore the features data before reading the file.

# get data
source("get_data.R")
get_uci_har_data()
list.files("uci-har-data")
list.files("uci-har-data/train")
list.files("uci-har-data/test")

# inspect features data
con <- file("uci-har-data/train/X_train.txt", "r")
feature_row <- readLines(con, 1); close(con)
str(feature_row)
# leading whitespace on row, check end of string
substr(feature_row, nchar(feature_row) - 100, nchar(feature_row))
# more than 1 whitespace between numbers?
length( gregexpr(" ", feature_row)[[1]] )
length( gregexpr("  ", feature_row)[[1]] )

# trim surrounding whitespace and split on 1 or 2 spaces
library(stringr)
feature_row <- str_trim(feature_row)
features_split <- strsplit(feature_row, " |  ")[[1]]
# 561 features as stated in features.txt file?
length(features_split)

# test reading features into dataframe
# get column names from 'features.txt' file
library(readr)
column_names <- read_table("uci-har-data/features.txt", col_names = FALSE)
column_names <- unlist(column_names)
train_features <- read_table("uci-har-data/train/X_train.txt",
                             col_names = column_names)
# readr handles the leading and inconsistent whitespace
