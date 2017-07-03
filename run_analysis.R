## Before running please make sure getwd() returns "../UCI HAR Dataset"

## run_analysis script will read and combine the test and train data from the base
## directory of the UCI HAR Dataset

    ## the import function takes dir and dataname to import both datasets. Since
    ## the processes are the same for both this is just easier.

    import <- function(dataname) {
        ## if statement sets the directory and filenames in an easy to find and
        ## read place
        if(dataname == "test" | dataname == "train") {
            X <- paste(dataname, "/X_", dataname, ".txt", sep = "")
            Y <- paste(dataname, "/y_", dataname, ".txt", sep = "")
            subject <- paste(dataname, "/subject_", dataname, ".txt", sep = "")
        } else return("invalid dataset")

        ##create features & activitylabels variable to make naming and sorting data easier
        features <- unlist(
            read.table(
                "features.txt",
                colClasses = c("NULL","character"),
                stringsAsFactors = FALSE))
        activitylabels <- unlist(
            read.table(
                "activity_labels.txt", 
                colClasses = c("NULL", "character"), 
                stringsAsFactors = FALSE))
        
        ## Use read.table to read in data and name the columns accordingly
        data <- read.table(
            X,
            stringsAsFactors = FALSE)[grep("mean\\(\\)|std\\(\\)", features)] ## subset by mean() and std()
        names(data) <- features[grep("mean\\(\\)|std\\(\\)", features)]

        ## Unabbreviate the raw data names for nonspecialist legibility
        names(data) <- gsub("^t", "Time", names(data))
        names(data) <- gsub("^f", "FFTransform", names(data))
        names(data)[grep("-mean\\(\\)", names(data))] <- paste("meanof", names(data)[grep("-mean\\(\\)", names(data))], sep="")
        names(data)[grep("-std\\(\\)", names(data))] <- paste("stddevof", names(data)[grep("-std\\(\\)", names(data))], sep="")
        names(data) <- gsub("Acc", "Acceleration", names(data))
        names(data) <- gsub("Gyro", "AngularAcceleration", names(data))
        names(data) <- gsub("Mag", "Magnitude", names(data))
        names(data) <- gsub("-mean\\(\\)-|-std\\(\\)-|-mean\\(\\)|-std\\(\\)", "", names(data))
        
        ## Add activity and subject information to testdata
        data <- cbind(
            subject = read.table(subject, stringsAsFactors = FALSE)[[1]],
            activity = read.table(Y, stringsAsFactors = FALSE)[[1]], 
            group = dataname,
            data) %>%
            mutate(activity = sapply(.data$activity, function(x) activitylabels[x]))
        }

df <- rbind(import("test"), import("train")) ## combine test and train data
df$activity <- tolower(df$activity) ## make all activity vars lowercase
df$activity <- gsub("_", "", df$activity) ## get rid of underscores in activity
dftidy <- df %>% group_by(subject, activity, group) %>% summarize_if(is.numeric, mean) ## mean by subject and activity
write.table(dftidy, "dftidy.txt", row.name = FALSE) ## write to file

## use read.table("dftidy.txt", header=TRUE) to read in the file