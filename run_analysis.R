## Importing the relevant libraries
library(readr)
library(dplyr)

## Reading the data
zip_file <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
directory <- getwd()
directory

if(!file.exists("./Coursera Data")) {
  dir.create("./Coursera Data")
}
download.file(zip_file, destfile = "./Coursera Data/zipData.zip")
unzip(zipfile = "./Coursera Data/zipData.zip", exdir = "./Coursera Data")

X_train <- read.table("./Coursera Data/UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./Coursera Data/UCI HAR Dataset/train/y_train.txt")
X_test <- read.table("./Coursera Data/UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./Coursera Data/UCI HAR Dataset/test/y_test.txt")

subject_train <- read.table("./Coursera Data/UCI HAR Dataset/train/subject_train.txt")
subject_test <- read.table("./Coursera Data/UCI HAR Dataset/test/subject_test.txt")

features_df <- read.table("./Coursera Data/UCI HAR Dataset/features.txt")

activity_labels_df <- read.table("./Coursera Data/UCI HAR Dataset/activity_labels.txt", col.names = c("activityID", "activity"))

## Renaming columns as necessary to match other data frames and merge
colnames(X_train) <- features_df$V2
y_train <- rename(y_train, "activityID" = "V1")
colnames(X_test) <- features_df$V2
y_test <- rename(y_test, "activityID" = "V1")

subject_train <- rename(subject_train, "subjectID" = "V1")
subject_test <- rename(subject_test, "subjectID" = "V1")

colnames(activity_labels_df) <- c("activityID", "activity")

## 1. Merge the training and the test sets to create one data set
train_df <- cbind(subject_train, y_train, X_train)
test_df <- cbind(subject_test, y_test, X_test)
df1 <- rbind(train_df, test_df)
dim(df1)
colnames(df1)
View(df1)

## 2. Extract only the measurements on the mean and standard deviation for each measurement
mean_df <- df1[ ,grep("[Mm]ean", names(df1))]
sd_df <- df1[ ,grep("[Mm]ean", names(df1))]
df2 <- df1[,(1:2)]
df3 <- cbind(df2, mean_df, sd_df)
dim(df3)
colnames(df3)
View(df3)

## 3. Use descriptive activity names to name the activities in the data set
df4 <- merge(df3, activity_labels_df, by = "activityID", all.y = TRUE)
df4 <- df4[,c(89,1:88)]
#df4 <- df4[,-(2)]
dim(df4)
colnames(df4)
View(df4)

## 4. Appropriately label the data set with descriptive variable names
colnames(df4)
colnames(df4) <- gsub("\\(\\)", "", colnames(df4))
colnames(df4) <- sub("^(t)", "time", colnames(df4))
colnames(df4) <- sub("Acc", "Acceleration", colnames(df4))
colnames(df4) <- sub("Gyro", "Gyroscope", colnames(df4))
colnames(df4) <- sub("\\b[Ff]req\\b)", "Frequency", colnames(df4))
colnames(df4) <- sub("^(f)", "frequency", colnames(df4))
colnames(df4) <- sub("Mag", "Magnitude", colnames(df4))
colnames(df4) <- sub("BodyBody", "Body", colnames(df4))
colnames(df4) <- sub("[Ss][Tt][Dd]", "standardDeviation", colnames(df4))
colnames(df4) <- sub("\\bX\\b", "Xaxis", colnames(df4))
colnames(df4) <- sub("\\bY\\b", "Yaxis", colnames(df4))
colnames(df4) <- sub("\\bZ\\b", "Zaxis", colnames(df4))
dim(df4)
colnames(df4)
View(df4)

## 5. From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject
tidy_data <- df4 %>% group_by(activityID, subjectID) %>% summarize_all(mean)
dim(tidy_data)
colnames(tidy_data)
View(tidy_data)

## Upload your data set as a txt file created with write.table() using row.name=FALSE
write.table(tidy_data, file = "./Coursera Data/tidy_data.txt", row.name=FALSE)

