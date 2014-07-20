
## Project Assignment for Coursera class,"Getting and Cleaning Data"

This directory is for the project assignment for Coursera class,"Getting and Cleaning Data".
This directory contains 2 files, run_analysis.R and CodeBook.md.

run_analysis.R is a language R script that produces tidy data set file for the program.  Following
is the high level description of the program.

1) Read the traingingset file (X_train.txt) and testdata file (X_test.txt) and merge it to a file
2) Read the feature file (features.txt) and obtain the variable for the column for the merge file
3) From the first tidy data set, obtain the columns for mean and standard deviation.
   When I obtain the column, the columns have to contains either mean() or std().  Otherwise
   I do not extract these columns and will not put it in the data set.
4) Read the files from data set (subject_test.txt, subject_train.txt, y_train.txt and y_test.txt)
   to obtain subject number and corresponding code.
5) Sort the data set by subject and activity and this makes the calculation much more simple
6) Calculate the mean for each subject and the activity.
7) Create the tidy data file and attach the file in Coursera project page.

In Coursera project web site, you need to click the link using your right button of the mouse and
select open link in new window to look at the data.

In activity_labels file, it contains the activity number and its corresponding description.
In the tidy data set, the second column contains the activity code.  Although I try to update
the column with description (using the information from activity_label files), I am not able
to do it.  Although I change the variable using data.frame structure (suppose to allow mixed data type),
for some reason, the program will not update the file.  As a result, the tidy data set contains
the activity code and not the description.
