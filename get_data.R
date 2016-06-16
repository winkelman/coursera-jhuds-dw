
## This function downloads and unzips the
## "Human Activity Recognition Using Smartphones Data Set"
## from the UCI Machine Learning Repository.
## It checks to see if the file and it's contents
## exist before downloading and/or extracting.

get_uci_har_data <- function() {

    file_url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
    # alternative URL from uci machine learning archive:
    # http://archive.ics.uci.edu/ml/machine-learning-databases/00240/UCI%20HAR%20Dataset.zip
    # additional names file (may not be necessary):
    # http://archive.ics.uci.edu/ml/machine-learning-databases/00240/UCI%20HAR%20Dataset.names
    
    default_extraction_path <- "UCI HAR Dataset"
    renamed_path <- "uci-har-data"
    file_name <- "uci-har-data.zip"
    
    if (file.exists(default_extraction_path) | file.exists(renamed_path)) {
        
        stop("data already found in current directory")
        
    } else if (file.exists(file_name)) {
        
        unzip("uci-har-data.zip")
        file.rename("UCI HAR Dataset", "uci-har-data")
        
    } else {
        
        download.file(file_url, "uci-har-data.zip")
        unzip("uci-har-data.zip")
        file.rename("UCI HAR Dataset", "uci-har-data")
        #file.remove("uci-har-data.zip")
    }
    
}