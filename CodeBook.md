Codebook for the Peer-graded Assignment: Getting and Cleaning Data Course Project in Coursera

The original dataset used in this project is free courtesy of Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto. Smartlab - Non Linear Complex Systems Laboratory DITEN - Universit‡ degli Studi di Genova. Via Opera Pia 11A, I-16145, Genoa, Italy. activityrecognition@smartlab.ws www.smartlab.ws
A description of the original data is available at: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
The data is able to be downloaded from: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

One of the most exciting areas in all of data science right now is wearable computing. 
Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. 
The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. 

The data used in the project is available here:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
  
The original data contains the following files:
- 'README.txt'
- 'features_info.txt'
- 'features.txt'
- 'activity_labels.txt'
- 'train/X_train.txt'
- 'train/y_train.txt'
- 'test/X_test.txt'
- 'test/y_test.txt'

In the train and test set the following files are also contained:
- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample
- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis
- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration
- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample

The run_analysis.R script follows the commans in the project being:
1. Merges the training and the test sets to create one data set
2. Extracts only the measurements on the mean and standard deviation for each measurement
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject

The final output tidy_data.txt file contains the following variable names:
 [1] "activityID"                                     
 [2] "subjectID"                                      
 [3] "frequencyBodyGyroscope-mean-Yaxis"              
 [4] "timeBodyAcceleration-mean-Xaxis"                
 [5] "timeBodyAcceleration-mean-Yaxis"                
 [6] "timeBodyAcceleration-mean-Zaxis"                
 [7] "timeGravityAcceleration-mean-Xaxis"             
 [8] "timeGravityAcceleration-mean-Yaxis"             
 [9] "timeGravityAcceleration-mean-Zaxis"             
[10] "timeBodyAccelerationJerk-mean-Xaxis"            
[11] "timeBodyAccelerationJerk-mean-Yaxis"            
[12] "timeBodyAccelerationJerk-mean-Zaxis"            
[13] "timeBodyGyroscope-mean-Xaxis"                   
[14] "timeBodyGyroscope-mean-Yaxis"                   
[15] "timeBodyGyroscope-mean-Zaxis"                   
[16] "timeBodyGyroscopeJerk-mean-Xaxis"               
[17] "timeBodyGyroscopeJerk-mean-Yaxis"               
[18] "timeBodyGyroscopeJerk-mean-Zaxis"               
[19] "timeBodyAccelerationMagnitude-mean"             
[20] "timeGravityAccelerationMagnitude-mean"          
[21] "timeBodyAccelerationJerkMagnitude-mean"         
[22] "timeBodyGyroscopeMagnitude-mean"                
[23] "timeBodyGyroscopeJerkMagnitude-mean"            
[24] "frequencyBodyAcceleration-mean-Xaxis"           
[25] "frequencyBodyAcceleration-mean-Yaxis"           
[26] "frequencyBodyAcceleration-mean-Zaxis"           
[27] "frequencyBodyAcceleration-meanFreq-Xaxis"       
[28] "frequencyBodyAcceleration-meanFreq-Yaxis"       
[29] "frequencyBodyAcceleration-meanFreq-Zaxis"       
[30] "frequencyBodyAccelerationJerk-mean-Xaxis"       
[31] "frequencyBodyAccelerationJerk-mean-Yaxis"       
[32] "frequencyBodyAccelerationJerk-mean-Zaxis"       
[33] "frequencyBodyAccelerationJerk-meanFreq-Xaxis"   
[34] "frequencyBodyAccelerationJerk-meanFreq-Yaxis"   
[35] "frequencyBodyAccelerationJerk-meanFreq-Zaxis"   
[36] "frequencyBodyGyroscope-mean-Xaxis"              
[37] "frequencyBodyGyroscope-mean-Yaxis.1"            
[38] "frequencyBodyGyroscope-mean-Zaxis"              
[39] "frequencyBodyGyroscope-meanFreq-Xaxis"          
[40] "frequencyBodyGyroscope-meanFreq-Yaxis"          
[41] "frequencyBodyGyroscope-meanFreq-Zaxis"          
[42] "frequencyBodyAccelerationMagnitude-mean"        
[43] "frequencyBodyAccelerationMagnitude-meanFreq"    
[44] "frequencyBodyAccelerationJerkMagnitude-mean"    
[45] "frequencyBodyAccelerationJerkMagnitude-meanFreq"
[46] "frequencyBodyGyroscopeMagnitude-mean"           
[47] "frequencyBodyGyroscopeMagnitude-meanFreq"       
[48] "frequencyBodyGyroscopeJerkMagnitude-mean"       
[49] "frequencyBodyGyroscopeJerkMagnitude-meanFreq"   
[50] "angle(tBodyAccelerationMean,gravity)"           
[51] "angle(tBodyAccelerationJerkMean),gravityMean)"  
[52] "angle(tBodyGyroscopeMean,gravityMean)"          
[53] "angle(tBodyGyroscopeJerkMean,gravityMean)"      
[54] "angle(Xaxis,gravityMean)"                       
[55] "angle(Yaxis,gravityMean)"                       
[56] "angle(Zaxis,gravityMean)"                       
[57] "timeBodyAcceleration-mean-Xaxis.1"              
[58] "timeBodyAcceleration-mean-Yaxis.1"              
[59] "timeBodyAcceleration-mean-Zaxis.1"              
[60] "timeGravityAcceleration-mean-Xaxis.1"           
[61] "timeGravityAcceleration-mean-Yaxis.1"           
[62] "timeGravityAcceleration-mean-Zaxis.1"           
[63] "timeBodyAccelerationJerk-mean-Xaxis.1"          
[64] "timeBodyAccelerationJerk-mean-Yaxis.1"          
[65] "timeBodyAccelerationJerk-mean-Zaxis.1"          
[66] "timeBodyGyroscope-mean-Xaxis.1"                 
[67] "timeBodyGyroscope-mean-Yaxis.1"                 
[68] "timeBodyGyroscope-mean-Zaxis.1"                 
[69] "timeBodyGyroscopeJerk-mean-Xaxis.1"             
[70] "timeBodyGyroscopeJerk-mean-Yaxis.1"             
[71] "timeBodyGyroscopeJerk-mean-Zaxis.1"             
[72] "timeBodyAccelerationMagnitude-mean.1"           
[73] "timeGravityAccelerationMagnitude-mean.1"        
[74] "timeBodyAccelerationJerkMagnitude-mean.1"       
[75] "timeBodyGyroscopeMagnitude-mean.1"              
[76] "timeBodyGyroscopeJerkMagnitude-mean.1"          
[77] "frequencyBodyAcceleration-mean-Xaxis.1"         
[78] "frequencyBodyAcceleration-mean-Yaxis.1"         
[79] "frequencyBodyAcceleration-mean-Zaxis.1"         
[80] "frequencyBodyAcceleration-meanFreq-Xaxis.1"     
[81] "frequencyBodyAcceleration-meanFreq-Yaxis.1"     
[82] "frequencyBodyAcceleration-meanFreq-Zaxis.1"     
[83] "frequencyBodyAccelerationJerk-mean-Xaxis.1"     
[84] "frequencyBodyAccelerationJerk-mean-Yaxis.1"     
[85] "frequencyBodyAccelerationJerk-mean-Zaxis.1"     
[86] "frequencyBodyAccelerationJerk-meanFreq-Xaxis.1" 
[87] "frequencyBodyAccelerationJerk-meanFreq-Yaxis.1" 
[88] "frequencyBodyAccelerationJerk-meanFreq-Zaxis.1" 
[89] "frequencyBodyGyroscope-mean-Xaxis.1" 

The run_analysis.R script merges different data sets and cleans them to prepare them for the output table which creates a new data frame that includes the average of each variable per activity and subject.
