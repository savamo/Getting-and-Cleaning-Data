# load activities labels
activities_dt <- read.table("UCI HAR Dataset/activity_labels.txt")

# load the features dt
features_dt <- read.table("UCI HAR Dataset/features.txt")

# create a vector with feature labels
features_labels <- as.vector(features_dt[,2])

# load train features values  as dataframe 
train_x_dt <- read.table("UCI HAR Dataset/train/X_train.txt")
# load train activities values as dataframe 
train_y_dt <- read.table("UCI HAR Dataset/train/y_train.txt")
# load train subjects values as dataframe 
train_subject_dt <- read.table("UCI HAR Dataset/train/subject_train.txt")
# create a full train dataframe with features, activities and subjects.
train_full <- cbind(train_x_dt, train_y_dt, train_subject_dt)

# load test features values as dataframe 
test_x_dt <- read.table("UCI HAR Dataset/test/X_test.txt")
# load test activities values as dataframe 
test_y_dt <- read.table("UCI HAR Dataset/test/y_test.txt")
# load test subjects values as dataframe 
test_subject_dt <- read.table("UCI HAR Dataset/test/subject_test.txt")
# create a full test dataframe with features, activities and subjects.
test_full <- cbind(test_x_dt, test_y_dt, test_subject_dt)

# create a big dataframe with rows of train and test data frame
df <- rbind(train_full, test_full)

# perform the labeling of columns with features and name correctly y and subject columns.
names(df)[1:561] <- features_labels
names(df)[562:563] <- c("activity", "subject")

# labels the data set with descriptive activity names, by changing the integer value to factor 
# by defining the levels of activities and the related labels.
df[,c("activity")] <- factor(df[,c("activity")], levels=activities_dt$V1, labels=activities_dt$V2)

# create a dt with all the columns with substring mean() and std() inside the columnname and adding 
# the columns of activities and subjects
dt_mean_std <- df[, c(grep("\\-mean\\(\\)|\\-std\\(\\)",names(df), ignore.case = TRUE), 562, 563)]

# save the table created.
write.table(dt_mean_std, "dt_mean_std.txt")

#install.packages("reshape")

library(reshape)
dt_mean_std_melt <- melt(dt_mean_std, id=c("activity","subject"))
dt_mean_std_melt_cast <- cast(dt_mean_std_melt, activity~subject~variable, mean)
dt_mean_std_melt_cast <- as.data.frame(dt_mean_std_melt_cast)
