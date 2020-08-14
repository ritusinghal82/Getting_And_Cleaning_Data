# Getting_And_Cleaning_Data
### Introduction

Tidy dataset has been created by using Smart phone dataset provided in the course project of 30 volunteers doing 6 acitvities. Only the X_train, and X_test data is used from the original dataset and data in the inertial folders is ignored. As X_train and X_test seems like the final data after post-processing.

### run_analysis script
Step1 :- X_train.txt, y_train.txt and subject_train.txt files are read in R using read.table command. It is checked that X_train has 561 columns each corresponding to one feature.
Step2:- feature.txt file is read in R using read.table command to retrieve the feature names.
Step3:- make.names command is used to make unique names from feature name vector since some of the names are duplicated in original file
Step4:- colnames command is used to assign column names to X_train dataframe
Step5:- Similarly y_train is given the column name activity and subject_train is given the colname subject
Step6:- set_lables and as_label command is used to assign activity labels to y_train dataframe.
Step7:- Now subject_train, y_train and X_train are combined using cbind command in trainMerged dataframe.
Step8:- Step1,4,5,6,7 are performed for the test data as well
Step9:- rbind command is used to Merge test data and train data. This is the answer to Step1 of Project
Step10: Now columns with names containg mean and std in them are selected removing angle and MeanFreq ones since these are not the mean and std variables. Resulting dataframe is called dataMerged_step2. This is the answer to step 2 of project
Step11: Names of feature columns are cleaned up to make them all lower , replace . with _ and removing trailing underscores using gsub command. 
Step12: Names from step 11 are assigned to the dataMerged_step using colnames command. THis is answer to step4 of project. We will use this to create tidy dataset
Step13: group_by on subject and acitivity is done and summarize_each on all the feature columns selecting mean function to get the final tidy dataset
Step14: FInally columns with std in their names are modified to std_mean to indicate column represents mean of SD. This gives the final tidy dataset. Which is the answer of step5
Step15: write.table command is used to write this dataset in tidy_dataset.txt
