
### Original data:

- [source](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) 
- [description](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)


### Data Transformation Steps

The data transformations is done through the `run_analysis.R` script.
The actions:

* load activities labels
* load the features dt
* create a vector with feature labels

* load train features values  as dataframe 
* load train activities values as dataframe 
* load train subjects values as dataframe 
* create a full train dataframe with features, activities and subjects.

* load test features values as dataframe 
* load test activities values as dataframe 
* load test subjects values as dataframe 
* create a full test dataframe with features, activities and subjects.

* create a big dataframe with rows of train and test data frame
* perform the labeling of columns with features and name correctly y and subject columns.

* labels the data set with descriptive activity names, by changing the integer value to factor  by defining the levels of activities and the related labels.

* create a dt with all the columns with substring mean() and std() inside the columnname and adding the columns of activities and subjects
* create the tidy dataset with use of melt and cast functions.
* save file tidy.csv


### Variable Descriptions

The variable used are the mean and standard deviation of value saved during the data collection.

#### Data Columns

 [1] "activity"                 "subject"                  "tBodyAccMeanX"           
 [4] "tBodyAccMeanY"            "tBodyAccMeanZ"            "tBodyAccStdX"            
 [7] "tBodyAccStdY"             "tBodyAccStdZ"             "tGravityAccMeanX"        
[10] "tGravityAccMeanY"         "tGravityAccMeanZ"         "tGravityAccStdX"         
[13] "tGravityAccStdY"          "tGravityAccStdZ"          "tBodyAccJerkMeanX"       
[16] "tBodyAccJerkMeanY"        "tBodyAccJerkMeanZ"        "tBodyAccJerkStdX"        
[19] "tBodyAccJerkStdY"         "tBodyAccJerkStdZ"         "tBodyGyroMeanX"          
[22] "tBodyGyroMeanY"           "tBodyGyroMeanZ"           "tBodyGyroStdX"           
[25] "tBodyGyroStdY"            "tBodyGyroStdZ"            "tBodyGyroJerkMeanX"      
[28] "tBodyGyroJerkMeanY"       "tBodyGyroJerkMeanZ"       "tBodyGyroJerkStdX"       
[31] "tBodyGyroJerkStdY"        "tBodyGyroJerkStdZ"        "tBodyAccMagMean"         
[34] "tBodyAccMagStd"           "tGravityAccMagMean"       "tGravityAccMagStd"       
[37] "tBodyAccJerkMagMean"      "tBodyAccJerkMagStd"       "tBodyGyroMagMean"        
[40] "tBodyGyroMagStd"          "tBodyGyroJerkMagMean"     "tBodyGyroJerkMagStd"     
[43] "fBodyAccMeanX"            "fBodyAccMeanY"            "fBodyAccMeanZ"           
[46] "fBodyAccStdX"             "fBodyAccStdY"             "fBodyAccStdZ"            
[49] "fBodyAccJerkMeanX"        "fBodyAccJerkMeanY"        "fBodyAccJerkMeanZ"       
[52] "fBodyAccJerkStdX"         "fBodyAccJerkStdY"         "fBodyAccJerkStdZ"        
[55] "fBodyGyroMeanX"           "fBodyGyroMeanY"           "fBodyGyroMeanZ"          
[58] "fBodyGyroStdX"            "fBodyGyroStdY"            "fBodyGyroStdZ"           
[61] "fBodyAccMagMean"          "fBodyAccMagStd"           "fBodyBodyAccJerkMagMean" 
[64] "fBodyBodyAccJerkMagStd"   "fBodyBodyGyroMagMean"     "fBodyBodyGyroMagStd"     
[67] "fBodyBodyGyroJerkMagMean" "fBodyBodyGyroJerkMagStd" 
