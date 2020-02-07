### R script to clean Human Activity Recognition (HAR) data into tidy format ###

# Load libraries
library(dplyr)

# Read in raw names of features and put through preprocess pipes
con <- file("./uci_har_dataset/features.txt")
feature_names <-
  con %>%
  readLines %>%
  # Split each feature name by space character
  strsplit(" ") %>%
  # Get second item in character vector in every list item
  sapply(function(split_items) {split_items[2]})
close(con)

# Remove empty parentheses "()" in feature names and replace dashes with underscores
feature_names <- gsub("[(][)]", "", feature_names)
feature_names <- gsub("-", "_", feature_names)

# Replace letter "t" with "time_" and "f" with "freq_" at the beginning of each feature name,
# and change all feature names to lower case
feature_names <- sub("^t", "time_", feature_names)
feature_names <- sub("^f", "freq_", feature_names)
feature_names <- tolower(feature_names)

# Read in X_train and X_test and add feature names
X_train <- read.table("./uci_har_dataset/train/X_train.txt", header = FALSE, sep = "",
                      col.names = feature_names)
X_test <- read.table("./uci_har_dataset/test/X_test.txt", header = FALSE, sep = "",
                     col.names = feature_names)

close(con)


## Extracts only the measurements on the mean and standard deviation for each measurement.


## Uses descriptive activity names to name the activities in the data set


## From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject

