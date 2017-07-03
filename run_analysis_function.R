## run_analysis will read and combine the test and train data from the base
## directory "dir" of UCI HAR Dataset

run_analysis <- function(dir) {
    ## import takes dir and dataname to import both datasets. Since the processes are the
    ## same for both this is just easier.

    import <- function(dir, dataname) {
        ## if statement sets the directory and filenames in an easy to find and
        ## read place
        if(dataname == "test" | dataname == "train") {
            X <- paste(dir, "/", dataname, "/X_", dataname, ".txt", sep = "")
            Y <- paste(dir, "/", dataname, "/y_", dataname, ".txt", sep = "")
            subject <- paste(dir, "/", dataname, "/subject_", dataname, ".txt", sep = "")
        } else return("invalid dataset")

        ##create features & activitylabels variable to make naming and sorting data easier
        features <- unlist(
            read.table(
                paste(dir,"/features.txt",sep=""),
                colClasses = c("NULL","character"),
                stringsAsFactors = FALSE))
        activitylabels <- unlist(
            read.table(
                paste(dir,"/activity_labels.txt", sep=""), 
                colClasses = c("NULL", "character"), 
                stringsAsFactors = FALSE))
        
        ## Use read.table to read in data and name the columns accordingly
        data <- read.table(
            X,
            col.names = features, 
            stringsAsFactors = FALSE)[grep("mean\\(\\)|std\\(\\)", features)] ## subset by mean() and std()

        ## Add activity and subject information to testdata
        data <- cbind(
            activity = read.table(Y, stringsAsFactors = FALSE)[[1]], 
            subject = read.table(subject, stringsAsFactors = FALSE)[[1]],
            data) %>%
            mutate(group = dataname,
                   activity = sapply(.data$activity, function(x) activitylabels[x])) ##add a variable to keep identify test and train data
        }

        rbind(import(dir, "test"), import(dir, "train"))
}        