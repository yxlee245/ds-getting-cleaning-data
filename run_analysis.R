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

# Remove parentheses in feature names
feature_names <- gsub("[()]", "", feature_names)
close(con)


## Extracts only the measurements on the mean and standard deviation for each measurement.


## Uses descriptive activity names to name the activities in the data set


## From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject

