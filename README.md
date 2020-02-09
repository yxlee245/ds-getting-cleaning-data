# Getting and Cleaning Data

## About this repo
This repo was created as an assignment for the course titled ["Getting and Cleaning Data"](https://www.coursera.org/learn/data-cleaning/) in Coursera. The main aim of this assignment is to obtain datasets in raw and messy formats, and clean them up into a tidy dataset. The raw data in this repo is a downsized version of [this dataset](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip), such that only the raw data files that are used to obtain the tidy data set are included. This is done to get around the size restriction by Github on the files that can be pushed.

## Directory Structure and Files
The structure of the working directory is as follows:
```
ds-getting-cleaning-data
|- outputs
|- uci_har_dataset
   |- test
   |- train
```
The raw data files can be found in the `uci_har_dataset` folder, while the final tidy data file can be found in the `outputs` folder.

## Processes in `run_analysis.R`
The following are the main processes that occur within `run_analysis.R`:
1. Preprocessing of feature names: This includes removing unnecessary characters such as empty parentheses ("()") and replacing the first letter with words (e.g. "t...." to "time_....") to make it easier to understand what each feature is.
2. Merging data from multiple sources: Raw data such as measurement readings, activity IDs, and activity descriptions are placed in several different files within the `uci_har_dataset` folder. This process reads in the information from such files, and merges them appropriately. In this step, only the mean and standard deviation of measurements are kept as features for the resulting dataset. Preprocessing of activity descriptions is also done in this process.
3. Aggregating and outputting tidy data: This involves grouping the data by activity and subject, and getting the average values of the features for every group. The final step is to output the tidy data to the `outputs` folder in CSV format.
The processes are described in more detail in `CodeBook.md`.

## Note
1. The `run_analysis.R` script requires the `dplyr` package to work. To install the package, run the following command in the R console:
```
install.packages("dplyr")
```