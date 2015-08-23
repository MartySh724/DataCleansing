library(dplyr)
library(stringr)

# get the test feature names
headerNames <- read.table("features.txt") # read the header

# get the Activitys
activity <- read.table("activity_labels.txt")
names(activity) <- c("ActivityCode", "Activity")

# Read the test data set and clean up the data
testXRaw <- read.table("test/X_test.txt")
testYRaw <- read.table("test/y_test.txt")
names(testXRaw) <- headerNames[,2] # set the testXRaw headers
names(testYRaw)[1] <- "ActivityCode"
testGrp <- cbind(testYRaw, testXRaw)

#Read the train data set and clean up the data
trainXRaw <- read.table("train/X_train.txt")
trainYRaw <- read.table("train/y_train.txt")
names(trainXRaw) <- headerNames[,2] # set the trainXRaw headers
names(trainYRaw)[1] <- "ActivityCode"
trainGrp <- cbind(trainYRaw, trainXRaw)

#Merge the training and testing data sets
analysis <- rbind(testGrp, trainGrp)

#Get the measures that are mean and std deviation
measuresMean <- names(analysis)[str_detect(names(analysis), "mean\\(\\)")]
extract <- analysis[, c("ActivityCode", measuresMean, names(analysis)[str_detect(names(analysis), "std\\(\\)")])]

#Add the descriptive names to the extract
extract <- merge(extract, activity, by = "ActivityCode", all=FALSE)

#Create a dataset with the average for each activity
avgMeasure <- group_by(extract, Activity) %>% summarise_each(funs(mean))
write.table(avgMeasure, file = "AvgMeasure.txt", row.names = TRUE)

avgMeasure  