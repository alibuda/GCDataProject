# run_analysis.R
===========
Put the Samsung data is in your working directory. after running the R script [run_analysis](https://github.com/alibuda/GCDataProject/blob/master/run_analysis.R) ,You will get the output text file named "resultData".

##Processing detail
===========
1.Load text file "features.txt" , which includes the whole 561 features of the raw data in the train data set and the test data set.We just choose the 66 features whose names contains "mean()" or "std()".Then, rename the features : replace "-mean()-" with "M" and replace "-std()-" with "S".Make a data.frame named "ext.col", which contains the index and new name of the feature you need
1.Load the raw train data from "X_train.txt", and Extract the features in the "ext.col" which we prepared upper. Get a new data.frame named "train.data"
1.Load the Training labels from "y_train.txt", and insert it to the data.frame "train.data" as variable Act
1.Load the activity_labels from "activity_labels.txt", and then set train.data$Act as factor with argument lables = activity_labels
1.Load the subjects from "subject_train.txt" ,and insert it to the data.frame "train.data" as variable Subject
1.Do the same processing to the raw Test data, produce a data.frame "test.data"
1.Merge "train.data" and "test.data" by function "rbind"
1.Use "tapply" function calculate the average of each variable for each activity and each subject ,with arguments X = every variable except Act and Subject,INDEX = list(Act , Subject), FUN = mean. Produce a data.frame "temp", use the function "melt" in the package "reshape2" to reshape the data.frame,the merge them all in a loop by each variable except Act and Subject.Get the final result data.frame "result"
1.Output the "result" as text file named "resultData.txt"

