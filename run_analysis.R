# This R script is for project assignment 1 forthe class, Getting and Cleaning Data.
#
# The data is based on the information from following website,
# https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip  
#
# Following is the description for the assignment (from course web page)
#
# 1) Merges the training and the test sets to create one data set.
# 2) Extracts only the measurements on the mean and standard deviation 
# for each measurement. 
# 3) Uses descriptive activity names to name the activities in the data set
# 4) Appropriately labels the data set with descriptive variable names. 
# 5) Creates a second, independent tidy data set with the average of each 
# variable for each activity and each subject. 
#
# All the data files are assume in the working directory of R Script.
# So there is no need to worry about the directory structure
#

# Read in training data set
trainingset = read.table("X_train.txt")

# Read in test data set
testset= read.table("X_test.txt")  

# Merge two data files together
trainingset <-rbind(trainingset, testset)

# read the description for each variable (column)
feature = read.table("features.txt")
row1 <- nrow(feature)

# store the feature (column) and corrresponding column position
labelname <- matrix(nrow = 1, ncol = 1)
labelposition <- matrix(nrow = 1, ncol = 1)
position <- 0

# determine the column if this is mean or standard derviation
for(i in 1:row1) {
  label <- grep("mean()", feature[i,2], ignore.case=FALSE,value=TRUE,fixed=TRUE)
  # Check to see if the variable is mean
  if (!is.na(label[1])) {  
    
    # it is a mean, save variable name and corresponding column position  
    position <- position + 1
    labelname[position] <- label[1]
    labelposition[position] <- i
  }
  else {
    # Check to see if the variable is standard deviation
    label <- grep("std", feature[i,2], ignore.case=TRUE,value=TRUE)
    if (!is.na(label[1])) {  
      
    # it is standard deviation, save variable name and corresponding column position   
      position <- position + 1
      labelname[position] <- label[1]
      labelposition[position] <- i
    }
    
  }     # end of else
  
}   # for loop  

subjectcolumn <-length(labelname)
observation <- nrow(trainingset)

# create a variable to store the result
result <- matrix(nrow = observation, ncol = subjectcolumn)

# create first tidy data set for project assignment 1
for(i in 1:observation)
  for (j in 1:subjectcolumn)
    result[i,j] <- trainingset[i,labelposition[j]]

# Read the subject file for test data and training data
subjecttrainset = read.table("subject_train.txt")  
subjecttestset = read.table("subject_test.txt") 

# Combine the file
subjecttrainset  <-rbind(subjecttrainset , subjecttestset)

# Read the activity file for test data and training data 
trainingactivity = read.table("y_train.txt")
testactivity= read.table("y_test.txt") 

# Combine the file
trainingactivity  <-rbind(trainingactivity , testactivity)

# Combines all the information and use subject as the first column
combinedata <- cbind(subjecttrainset, trainingactivity)
combinedata <- cbind(combinedata, result)

# Assign column names
colnames(combinedata) <- c("Subject", "Activity", labelname)
# Sort by subject
combinedata <- combinedata[order(combinedata$Subject, combinedata$Activity),]

# Obtain the description for each activity
activity_description = read.table("activity_labels.txt") 

# For raw data, there is a max of 6 activity and 30 subject
maxsubject = 30
maxactivity = 6

# The number of row and column of first tidy data set
numberofcolumn = ncol(combinedata)
numberofrow = nrow (combinedata)

# This data frame stores the result
#resultdata <- matrix(nrow = 1, ncol = numberofcolumn)
resultdata <- data.frame(nrow = 1, ncol = numberofcolumn)

resultdata <- resultdata[-1,]

# Temporary data frame to store the data
temp <- matrix(nrow = 1, ncol = numberofcolumn)
temp <- temp[-1,]

flag <- 1
counter <- 1

# Obtain the mean for each subject for a specific activity
# Since the file is already sorted, we can delete the rows once it is
# compared, so there is no need to check the row twice
while (flag == 1) {
  
  # Obtain the subject and activity that you want to check
  subject1 <- combinedata [1,1]
  activity1 <- combinedata [1,2]
  flag1 <- 1
  index <- 0
  remainrow <- nrow(combinedata)
  while (flag1 == 1) {
  
    index <- index + 1
  # check to see and make sure it is not outofbound and cause an error    
    if (index <= remainrow) {
  # obtain all the row for a subject and an activity    
    if ((subject1 == combinedata[index,1]) && (activity1 == combinedata[index,2])) {
        temp <- rbind(temp, combinedata[index,])
        }
     else { flag1 <- 0}
    }
    else {flag1 <- 0}  
  }  # end of while loop

  # determine the number of rows for a subject
  subjectrow <- nrow(temp)

  # determine the mean of the variable for a subject and an activity
  # since the subject and the activity will be the same, colMeans() will not be able
  # to change the value
  averagesubject <- colMeans(temp)
  average <- matrix(averagesubject, nrow = 1,ncol = numberofcolumn)
  average[1,1] <- subject1
  average[1,2] <- activity1 
  
  # add the row into result
  resultdata <- rbind(resultdata, average) 
  
  # clean up the variable
  average <- average[-1,]
  temp <- temp[-1:-subjectrow,]
  
  # remove the rows that we have already calc.
  combinedata <- combinedata[-1:-subjectrow,]
  totalrow <- nrow(combinedata)
  if (nrow(combinedata) < 1) { flag <- 0}
  # This comment is for trouble shooting and prevent this to become an infinite loop
  if (counter > 200) {flag <- 0 }
  else {counter <- counter + 1 }
  
}      #end of while loop 

# Create the second tidy data set file
  
colnames(resultdata) <- c("Subject", "Activity", labelname)
write.table(resultdata, "secondtidydata.txt")