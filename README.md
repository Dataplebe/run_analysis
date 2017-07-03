##Getting & Cleaning Data Final Project

# run_analysis

Within the run_analysis script I create a function "import" that imports the
data from the train and test directories within the UCI HAR dataset.

The first if statement is a residual from starting the project as a function
and taking data. It was there to avoid using a whole lot of paste commands to
go to the correct directories.

Two vectors are created, one from features.txt and one from activity_labels.txt

When reading in the X_test and X_train data the features vector is used to
subset just the columns containing the strings mean() and std(). Using colnames
within the read.table() function caused the column names to truncate, so I used
names() to name the columns with the subsetted feature variable.

There are 8 names() function calls used to remove underscores and abbreviations
from the UCI HAR dataset and format the column names as slightly more
descriptive.

Finally, cbind is used to attach the subject variables, activity numeric
variables, create a "group" column to keep track of test and train variable, and
finally, the actual measured data. Mutate and sapply is used to match the activity
numerics to their character strings from the activitylabels variable and
substitute the descriptive words for the numerics.

After the end of the function, the complete data frame is completed with
df <- rbind and two calls to the import() function. A little housekeeping removes
underscores from the activity column and changes all the words to lowercase.

dftidy is then grouped by subject and activity and all the data is summarized
wtih summarized_if. At this point there is a wide tidy dataset with a single
observation per row and a single variable per column. Each column is easily
readable for whether it is a mean or standard deviation, what is being measured,
and, when necessary, what directional vector the measurement is.