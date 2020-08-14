### Introduction

Tidy dataset has been prepared from following the steps 1 to 4 given in Getting and Cleaning
Data Course Project. In total this dataset has 180 rows (30 subjects * 6 activities) and there are 88 columns. Values in these columns is the average of variables obtained from step2 of project. 

X_train and X_test data from train and test folders has been merged to create this dataset.

### Original DataSet
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

### Tidy Dataset
This dataset contains only the averages of mean and std variables from original dataset. 
Column Descriptions:

Col.No. Col Name            Description
1        subject            Number of person pariticipating in the activity
2        acitivity          One of these acitvities ("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS",                                                        "SITTING", "STANDING", "LAYING")
3       tbodyacc_mean_x     Mean of body acceleration Signal in X direction 
4       tbodyacc_mean_y     Mean of body acceleration Signal in Y direction
5       tbodyacc_mean_z     Mean of body acceleration Signal in Z direction
6       tgravityacc_mean_x  Mean of gravity acceleration Signal in X direction
7       tgravityacc_mean_y  Mean of gravity acceleration Signal in Y direction
8       tgravityacc_mean_z  Mean of gravity acceleration Signal in Z direction
9       tbodyaccjerk_mean_x Mean of body linear acceleration and angular velocity derived in time X dir 
10      tbodyaccjerk_mean_y Mean of body linear acceleration and angular velocity derived in time Y dir
11      tbodyaccjerk_mean_z Mean of body linear acceleration and angular velocity derived in time Z dir
12      tbodygyro_mean_x    Mean of body gyroscope Signal in X direction
13      tbodygyro_mean_y    Mean of body gyroscope Signal in Y direction
14      tbodygyro_mean_z    Mean of body gyroscope Signal in Z direction
15      tbodygyrojerk_mean_x Mean of body gyroscope signal and angular velocity derived in time X dir
16      tbodygyrojerk_mean_y Mean of body gyroscope signal and angular velocity derived in time Y dir
17      tbodygyrojerk_mean_z Mean of body gyroscope signal and angular velocity derived in time Z dir
18      tbodyaccmag_mean     Mean of Magnitude of body acceleration Signal 
19      tgravityaccmag_mean  Mean of Magnitude of gravity acceleration Signal
20      tbodyaccjerkmag_mean  Mean of Magnitude of tbodyaccjerk signal in XYZ
21      tbodygyromag_mean     Mean of magnitude of gyro signal  
22      tbodygyrojerkmag_mean  Mean of magnitude of tbodygyrojerk signal in XYZ
23      fbodyacc_mean_x        Mean of FFT of body acceleration Signal in X direction
24      fbodyacc_mean_y        Mean of FFT of body acceleration Signal in Y direction
25      fbodyacc_mean_z        Mean of FFT of body acceleration Signal in Z direction
26      fbodyaccjerk_mean_x     Mean of FFT of tbodyaccjerk_mean_x
27      fbodyaccjerk_mean_y     Mean of FFT of tbodyaccjerk_mean_y
28      fbodyaccjerk_mean_z     Mean of FFT of tbodyaccjerk_mean_z
29      fbodygyro_mean_x        Mean of FFT of tbodygyro_mean_x
30      fbodygyro_mean_y        Mean of FFT of tbodygyro_mean_y
31      fbodygyro_mean_z        Mean of FFT of tbodygyro_mean_z
32      fbodyaccmag_mean        Mean of FFT of tbodyaccmag_mean
33      fbodybodyaccjerkmag_mean  Mean of FFT of tbodyaccmag_mean
34      fbodybodygyromag_mean       Mean of FFT of tbodygyromag_mean
35      fbodybodygyrojerkmag_mean    Mean of FFT tbodygyrojerkmag_mean
36      tbodyacc_std_x          Mean of SD of body accleration signal in X           
37      tbodyacc_std_y          Mean of SD of body accleration signal in Y
38      tbodyacc_std_z          Mean of SD of body accleration signal in Z
39      tgravityacc_std_x       Mean of SD of gravity accleration signal in X
40      tgravityacc_std_y       Mean of SD of gravity accleration signal in Y
41      tgravityacc_std_z       Mean of SD of gravity accleration signal in Z
42      tbodyaccjerk_std_x      Mean of SD of accleartion jerk signal in X
43      tbodyaccjerk_std_y      Mean of SD of accleration jerk signal in Y
44      tbodyaccjerk_std_z      Mean of SD of accleration jerk signal in Z
45      tbodygyro_std_x         Mean of SD of gyro signal in X
46      tbodygyro_std_y         Mean of SD of gyro signal in Y
47      tbodygyro_std_z         Mean of SD of gyro signal in Z
48      tbodygyrojerk_std_x     Mean of SD of gyro jerk signal in X
49      tbodygyrojerk_std_y     Mean of SD of gyro jerk signal in Y
50      tbodygyrojerk_std_z     Mean of SD of gyro jerk signal in Z
51      tbodyaccmag_std         Mean of SD of magnitude of body accleration
52      tgravityaccmag_std      Mean of SD of magnitude of gravity accleration
53      tbodyaccjerkmag_std     Mean of SD of body accleration jerk signal
54      tbodygyromag_std        Mean of SD of magnitude of gyro signal
55      tbodygyrojerkmag_std    Mean of SD of Magnitude of gyro jerk signal
56      fbodyacc_std_x          Mean of SD of FFT od body accleration in X
57      fbodyacc_std_y          Mean of SD of FFT od body accleration in Y
58      fbodyacc_std_z          Mean of SD of FFT od body accleration in Z
59      fbodyaccjerk_std_x      Mean of SD of FFT of body accleration jerk signal in X
60      fbodyaccjerk_std_y      Mean of SD of FFT of body accleration jerk signal in Y
61      fbodyaccjerk_std_z      Mean of SD of FFT of body accleration jerk signal in Z
62      fbodygyro_std_x         Mean of SD of FFT of body gyro signal in X
63      fbodygyro_std_y         Mean of SD of FFT of body gyro signal in Y
64      fbodygyro_std_z         Mean of SD of FFT of body gyro signal in Z
65      fbodyaccmag_std         Mean of SD of FFT of magnitude of body accleration signal
66      fbodybodyaccjerkmag_std  Mean of SD of FFT of magnitude of body accleration jerk signal 
67      fbodybodygyromag_std      Mean of SD of FFT of magnitude of gyro signal
68      fbodybodygyrojerkmag_std   Mean of SD of FFT of magnitude of body gyro jerk signal
