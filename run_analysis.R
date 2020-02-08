### R script to clean Human Activity Recognition (HAR) data into tidy format ###

## Load libraries ----
library(dplyr)


## Preprocess feature names ----

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


## Merge data from multiple sources ----

# Read in X_train and X_test and add feature names
X_train <- read.table("./uci_har_dataset/train/X_train.txt", header = FALSE, sep = "",
                      col.names = feature_names)
X_test <- read.table("./uci_har_dataset/test/X_test.txt", header = FALSE, sep = "",
                     col.names = feature_names)

# Create logical vector with same length as column names of X_train and X_test
# TRUE when name contains the string "mean" or "std", FALSE otherwise
is_mean_or_std_name <- grepl("_mean$|_mean_|_std", feature_names)

# Choose only mean and standard deviation of measurements
X_train <- X_train[,is_mean_or_std_name]
X_test <- X_test[,is_mean_or_std_name]

# Read in y_train and y_test and add to X_train and X_test respectively
con <- file("./uci_har_dataset/train/y_train.txt")
y_train <- readLines(con)
close(con)
con <- file("./uci_har_dataset/test/y_test.txt")
y_test <- readLines(con)
close(con)
y_label <- "activity_id"
df_train <- cbind(X_train, y_train)
names(df_train)[length(df_train)] = y_label
df_test <- cbind(X_test, y_test)
names(df_test)[length(df_test)] = y_label

# Read in subject IDs and add to df_train and df_test
con <- file("./uci_har_dataset/train/subject_train.txt")
subjects_train <- readLines(con)
close(con)
con <- file("./uci_har_dataset/test/subject_test.txt")
subjects_test <- readLines(con)
close(con)
subject_id_label <- "subject_id"
df_train <- cbind(subjects_train, df_train)
names(df_train)[1] <- subject_id_label
df_test <- cbind(subjects_test, df_test)
names(df_test)[1] <- subject_id_label

# Merge training and test set
df_all <- rbind(df_train, df_test)

# Read in activity descriptions
# and create dataframe with activity_id and activity_desc as columns
con <- file("./uci_har_dataset/activity_labels.txt")
activity_labels <- readLines(con)
close(con)
activity_id <- sapply(strsplit(activity_labels, " "),
                      function(split_items) {split_items[1]})
activity_desc <- sapply(strsplit(activity_labels, " "),
                        function(split_items) {tolower(split_items[2])})
activity_df <- data.frame(activity_id, activity_desc)

# Merge df_all and activity_df by 
df_all <- merge(df_all, activity_df, by = "activity_id", all = FALSE)

# Remove "activity_id" column in df_all
df_all <- df_all[, !(names(df_all) %in% c(y_label))]


## Aggregate and output tidy data ----

# Convert df_all into tibble format and group tibble by activity and subject
# then compute average (mean) for each variable in tibble_grouped
tibble_avg <-
  df_all %>%
  tbl_df %>%
  group_by(subject_id, activity_desc) %>%
  summarize_at(feature_names[is_mean_or_std_name], mean)

# Add "avg_" to the feature names
names(tibble_avg)[3:ncol(tibble_avg)] <-
  sub("^", "avg_", names(tibble_avg)[3: ncol(tibble_avg)])

# Output tibble
write.csv(tibble_avg, file = "./outputs/har_data_tidy.csv", row.names = FALSE)
