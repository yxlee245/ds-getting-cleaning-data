# Description of tidy version of the Human Activity Recognition (HAR) Dataset

## Description of Data Fields in Tidy Data
_Refer to `./uci_har_dataset/README.txt` for the description of variables in the raw dataset_<br>
Field Number | Field Label | Type | Description
--- | --- | --- | ---
01 | subject_id | charcter | ID of sbjects, from 1 to 30
02 | activity_desc | character | one of the following six types of activities: "walking", "walking_upstairs", "walking_downstairs", "sitting", "standing", "laying"
03 | avg_time_bodyacc_mean_x | numeric | aggregated and averaged by subject and activity, in the range [-1, 1]
04 | avg_time_bodyacc_mean_y | numeric | aggregated and averaged by subject and activity, in the range [-1, 1]
05 | avg_time_bodyacc_mean_z | numeric | aggregated and averaged by subject and activity, in the range [-1, 1]
06 | avg_time_bodyacc_std_x | numeric | aggregated and averaged by subject and activity, in the range [-1, 1]
07 | avg_time_bodyacc_std_y | numeric | aggregated and averaged by subject and activity, in the range [-1, 1]
08 | avg_time_bodyacc_std_z | numeric | aggregated and averaged by subject and activity, in the range [-1, 1]
09 | avg_time_gravityacc_mean_x | numeric | aggregated and averaged by subject and activity, in the range [-1, 1]
10 | avg_time_gravityacc_mean_y | numeric | aggregated and averaged by subject and activity, in the range [-1, 1]
11 | avg_time_gravityacc_mean_z | numeric | aggregated and averaged by subject and activity, in the range [-1, 1]
12 | avg_time_gravityacc_std_x | numeric | aggregated and averaged by subject and activity, in the range [-1, 1]
13 | avg_time_gravityacc_std_y | numeric | aggregated and averaged by subject and activity, in the range [-1, 1]
14 | avg_time_gravityacc_std_z | numeric | aggregated and averaged by subject and activity, in the range [-1, 1]
15 | avg_time_bodyaccjerk_mean_x | numeric | aggregated and averaged by subject and activity, in the range [-1, 1]
16 | avg_time_bodyaccjerk_mean_y | numeric | aggregated and averaged by subject and activity, in the range [-1, 1]
17 | avg_time_bodyaccjerk_mean_z | numeric | aggregated and averaged by subject and activity, in the range [-1, 1]
18 | avg_time_bodyaccjerk_std_x | numeric | aggregated and averaged by subject and activity, in the range [-1, 1]
19 | avg_time_bodyaccjerk_std_y | numeric | aggregated and averaged by subject and activity, in the range [-1, 1]
20 | avg_time_bodyaccjerk_std_z | numeric | aggregated and averaged by subject and activity, in the range [-1, 1]
21 | avg_time_bodygyro_mean_x | numeric | aggregated and averaged by subject and activity, in the range [-1, 1]
22 | avg_time_bodygyro_mean_y | numeric | aggregated and averaged by subject and activity, in the range [-1, 1]
23 | avg_time_bodygyro_mean_z | numeric | aggregated and averaged by subject and activity, in the range [-1, 1]
24 | avg_time_bodygyro_std_x | numeric | aggregated and averaged by subject and activity, in the range [-1, 1]
25 | avg_time_bodygyro_std_y | numeric | aggregated and averaged by subject and activity, in the range [-1, 1]
26 | avg_time_bodygyro_std_z | numeric | aggregated and averaged by subject and activity, in the range [-1, 1]
27 | avg_time_bodygyrojerk_mean_x | numeric | aggregated and averaged by subject and activity, in the range [-1, 1]
28 | avg_time_bodygyrojerk_mean_y | numeric | aggregated and averaged by subject and activity, in the range [-1, 1]
29 | avg_time_bodygyrojerk_mean_z | numeric | aggregated and averaged by subject and activity, in the range [-1, 1]
30 | avg_time_bodygyrojerk_std_x | numeric | aggregated and averaged by subject and activity, in the range [-1, 1]
31 | avg_time_bodygyrojerk_std_y | numeric | aggregated and averaged by subject and activity, in the range [-1, 1]
32 | avg_time_bodygyrojerk_std_z | numeric | aggregated and averaged by subject and activity, in the range [-1, 1]
33 | avg_time_bodyaccmag_mean | numeric | aggregated and averaged by subject and activity, in the range [-1, 1]
34 | avg_time_bodyaccmag_std | numeric | aggregated and averaged by subject and activity, in the range [-1, 1]
35 | avg_time_gravityaccmag_mean | numeric | aggregated and averaged by subject and activity, in the range [-1, 1]
36 | avg_time_gravityaccmag_std | numeric | aggregated and averaged by subject and activity, in the range [-1, 1]
37 | avg_time_bodyaccjerkmag_mean | numeric | aggregated and averaged by subject and activity, in the range [-1, 1]
38 | avg_time_bodyaccjerkmag_std | numeric | aggregated and averaged by subject and activity, in the range [-1, 1]
39 | avg_time_bodygyromag_mean | numeric | aggregated and averaged by subject and activity, in the range [-1, 1]
40 | avg_time_bodygyromag_std | numeric | aggregated and averaged by subject and activity, in the range [-1, 1]
41 | avg_time_bodygyrojerkmag_mean | numeric | aggregated and averaged by subject and activity, in the range [-1, 1]
42 | avg_time_bodygyrojerkmag_std | numeric | aggregated and averaged by subject and activity, in the range [-1, 1]
43 | avg_freq_bodyacc_mean_x | numeric | aggregated and averaged by subject and activity, in the range [-1, 1]
44 | avg_freq_bodyacc_mean_y | numeric | aggregated and averaged by subject and activity, in the range [-1, 1]
45 | avg_freq_bodyacc_mean_z | numeric | aggregated and averaged by subject and activity, in the range [-1, 1]
46 | avg_freq_bodyacc_std_x | numeric | aggregated and averaged by subject and activity, in the range [-1, 1]
47 | avg_freq_bodyacc_std_y | numeric | aggregated and averaged by subject and activity, in the range [-1, 1]
48 | avg_freq_bodyacc_std_z | numeric | aggregated and averaged by subject and activity, in the range [-1, 1]
49 | avg_freq_bodyaccjerk_mean_x | numeric | aggregated and averaged by subject and activity, in the range [-1, 1]
50 | avg_freq_bodyaccjerk_mean_y | numeric | aggregated and averaged by subject and activity, in the range [-1, 1]
51 | avg_freq_bodyaccjerk_mean_z | numeric | aggregated and averaged by subject and activity, in the range [-1, 1]
52 | avg_freq_bodyaccjerk_std_x | numeric | aggregated and averaged by subject and activity, in the range [-1, 1]
53 | avg_freq_bodyaccjerk_std_y | numeric | aggregated and averaged by subject and activity, in the range [-1, 1]
54 | avg_freq_bodyaccjerk_std_z | numeric | aggregated and averaged by subject and activity, in the range [-1, 1]
55 | avg_freq_bodygyro_mean_x | numeric | aggregated and averaged by subject and activity, in the range [-1, 1]
56 | avg_freq_bodygyro_mean_y | numeric | aggregated and averaged by subject and activity, in the range [-1, 1]
57 | avg_freq_bodygyro_mean_z | numeric | aggregated and averaged by subject and activity, in the range [-1, 1]
58 | avg_freq_bodygyro_std_x | numeric | aggregated and averaged by subject and activity, in the range [-1, 1]
59 | avg_freq_bodygyro_std_y | numeric | aggregated and averaged by subject and activity, in the range [-1, 1]
60 | avg_freq_bodygyro_std_z | numeric | aggregated and averaged by subject and activity, in the range [-1, 1]
61 | avg_freq_bodyaccmag_mean | numeric | aggregated and averaged by subject and activity, in the range [-1, 1]
62 | avg_freq_bodyaccmag_std | numeric | aggregated and averaged by subject and activity, in the range [-1, 1]
63 | avg_freq_bodybodyaccjerkmag_mean | numeric | aggregated and averaged by subject and activity, in the range [-1, 1]
64 | avg_freq_bodybodyaccjerkmag_std | numeric | aggregated and averaged by subject and activity, in the range [-1, 1]
65 | avg_freq_bodybodygyromag_mean | numeric | aggregated and averaged by subject and activity, in the range [-1, 1]
66 | avg_freq_bodybodygyromag_std | numeric | aggregated and averaged by subject and activity, in the range [-1, 1]
67 | avg_freq_bodybodygyrojerkmag_mean | numeric | aggregated and averaged by subject and activity, in the range [-1, 1]
68 | avg_freq_bodybodygyrojerkmag_std | numeric | aggregated and averaged by subject and activity, in the range [-1, 1]

## Steps to Obtain Tidy Dataset
_The following steps describe the process of getting and cleaning the dataset using the R programming language_
1. Read in `./uci_har_dataset/features.txt` using the `file` and `readLines` functions to get a character vector with each line in the file as one element. Split every element of the vector by the space character using the `strsplit` function. This will result in a list that contains a character vector of length 2 within every element. Use the `sapply` function to return only the second character object for every list element, and assign that to `feature_names`.
2. Remove empty parentheses and replace dashes with underscores for evey character object in `feature_names`, using the `gsub` function. As an example, the feature name "tBodyAcc-mean()-X" will be transformed to "tBodyAcc_mean_X" after this step.
3. Replace the first letter of the feature names using the `sub` function, such that "t" is replaced with "time_", and "f" is replaced with "freq_", if "t" or "f" are the first character of the feature name. Then, change the feature names to lowercase using the `tolower` function. Continuing from the example in step 2, the feature name "tBodyAcc_mean_X" will be further transformed to "time_bodyacc_mean_x".
4. Read in `./uci_har_dataset/train/X_train.txt` and `./uci_har_dataset/test/X_test.txt` using the `read.table` function, setting `header = FALSE`, `sep = ""` and `col.names = feature_names`. Assign the two resulting dataframes to `X_train` and `X_test` respectively.
5. Create a logical vector with the same length as `feature_names`, using the `grepl` function with `"_mean$|_mean_|_std"` as the pattern needed for the function, and assigning to `is_mean_or_std_name`. In `is_mean_or_std_name`, `TRUE` corresponds to a feature that is either the mean or standard deviation of a measurement, and `FALSE` otherwise.
6. Use `is_mean_or_std_name` to subset `X_train` and `X_test` by columns, and reassign to `X_train` and `X_test` respectively. `X_train` and `X_test` should now contain only mean and standard deviation of measurements.
7. Read in `./uci_har_dataset/train/y_train.txt` and `./uci_har_dataset/test/y_test.txt` using the `file` and `readLines` functions, and assign the resulting character vectors to `y_train` and `y_test` respectively. Use the `cbind` function to merge `X_train` with `y_train`, and `X_test` with `y_test`. The contents of `y_train` should end up at the right side of the contents of `X_train`, and the same applies to `X_test` and `y_test`. Assign the merged dataframes to `df_train` and `df_test` accordingly. Change the name of the last column to "activity_id" for both `df_train` and `df_test`, using the `names` function.
8. Read in `./uci_har_dataset/train/subject_train.txt` and `./uci_har_dataset/test/subject_test.txt` using the `file` and `readLines` functions, and assign the resulting character vectors to `subjects_train` and `subjects_test` respectively. Use the `cbind` function to merge `subjects_train` with `df_train`, and `subjects_test` with `df_test`. The contents of `subjects_train` should end up at the left side of the contents of `df_train`, and the same applies to `subjects_test` and `df_test`. Reassign the merged dataframes to `df_train` and `df_test` accordingly. Change the name of the first column to "subject_id" for both `df_train` and `df_test`, using the `names` function.
9. Merge `df_train` and `df_test` using the `rbind` function, and assign to `df_all`.
10. Read in `./uci_har_dataset/activity_labels.txt` using the `file` and `readLines` functions, and assign the resulting vector to `activity_labels`. Use the `sapply` and `strsplit` functions to separate the activity ID and description, and assign these to `activity_id` and `activity_desc` respectively. Create a dataframe with `activity_id` and `activity_desc`, and assign to `activity_df`.
11. Merge `df_all` and `activity_df` using the `merge` function, with arguments `by = "activity_id"` and `all = FALSE`, and reassign to `df_all`. Remove the "activity_id" column in `df_all` using the `names` function and `%in%` operator within `df_all[]`.
12. Convert `df_all` to a tibble using the `tbl_df` function (from the `dplyr` library). Use the `group_by` function on the resulting tibble, with `subject_id` and `activity_desc` as the arguments. The use the `summarize_at` function, with `feature_names[is_mean_or_std_name]` and `mean` function as the arguments. Assign the result of this step to `tibble_avg`.
13. Use the `sub` function, with `"^"` as the pattern and `"avg_` as the replacement string, on the column names in `tibble_avg`, starting from the third column. Continuing with the example in step 3, the column name "time_bodyacc_mean_x" will be transformed to "avg_time_bodyacc_mean_x".
14. Use the `write.csv` function to output `tibble_avg` to `./outputs/har_data_tidy.csv`, with `row.names = FALSE` as the additional argument.