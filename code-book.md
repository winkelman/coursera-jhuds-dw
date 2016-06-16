# Code Book

The raw data section is quoted from the original code book and refers to the unprocessed data.  The tidy data section refers to the processed data and the code book refers to the features found in the `tidy-data.txt` file created in this project.

#### Raw Data

>The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.

>Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).

>Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).

>These signals were used to estimate variables of the feature vector for each pattern ('-XYZ' is used to denote 3-axial signals in the X, Y and Z directions):

>tBodyAcc-XYZ  
tGravityAcc-XYZ  
tBodyAccJerk-XYZ  
tBodyGyro-XYZ  
tBodyGyroJerk-XYZ  
tBodyAccMag  
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

>The set of variables that were estimated from these signals are:

>mean(): Mean value  
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

>Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

>gravityMean  
tBodyAccMean  
tBodyAccJerkMean  
tBodyGyroMean  
tBodyGyroJerkMean

>The complete list of variables of each feature vector is available in 'features.txt'

#### Tidy Data

The tidy dataset contains 180 observations of 88 features.  The first 2 features are used to identify each subject and the activity done when the precise measurements were taken with either the accelerometer or gyroscope:

- "subject_number" -  the unique identifier for each subject in the experiment
- "activity_name" - the name of the activity for which the other measurements were taken

The following features are averages of the original measurements/features, grouped by "subject_number" and "activity_name".  Only the original features that were means or standard deviations were kept as mentioned in the README.  Features names were expanded to give better descriptions.  The meaning of each part of the feature name can be extracted from the original code book above.

- "time_body_acceleration_mean_x"  
- "time_body_acceleration_mean_y"  
- "time_body_acceleration_mean_z"  
- "time_body_acceleration_std_x"  
- "time_body_acceleration_std_y"  
- "time_body_acceleration_std_z"  
- "time_gravity_acceleration_mean_x"  
- "time_gravity_acceleration_mean_y"  
- "time_gravity_acceleration_mean_z"  
- "time_gravity_acceleration_std_x"  
- "time_gravity_acceleration_std_y"  
- "time_gravity_acceleration_std_z"  
- "time_body_acceleration_jerk_mean_x"  
- "time_body_acceleration_jerk_mean_y"  
- "time_body_acceleration_jerk_mean_z"  
- "time_body_acceleration_jerk_std_x"  
- "time_body_acceleration_jerk_std_y"  
- "time_body_acceleration_jerk_std_z"  
- "time_body_gyroscope_mean_x"  
- "time_body_gyroscope_mean_y"  
- "time_body_gyroscope_mean_z"  
- "time_body_gyroscope_std_x"  
- "time_body_gyroscope_std_y"
- "time_body_gyroscope_std_z"
- "time_body_gyroscope_jerk_mean_x"
- "time_body_gyroscope_jerk_mean_y"
- "time_body_gyroscope_jerk_mean_z"
- "time_body_gyroscope_jerk_std_x"
- "time_body_gyroscope_jerk_std_y"
- "time_body_gyroscope_jerk_std_z"
- "time_body_acceleration_magnitude_mean"
- "time_body_acceleration_magnitude_std"
- "time_gravity_acceleration_magnitude_mean"
- "time_gravity_acceleration_magnitude_std"
- "time_body_acceleration_jerk_magnitude_mean"
- "time_body_acceleration_jerk_magnitude_std"
- "time_body_gyroscope_magnitude_mean"
- "time_body_gyroscope_magnitude_std"
- "time_body_gyroscope_jerk_magnitude_mean"
- "time_body_gyroscope_jerk_magnitude_std"
- "freq_body_acceleration_mean_x"
- "freq_body_acceleration_mean_y"
- "freq_body_acceleration_mean_z"
- "freq_body_acceleration_std_x"
- "freq_body_acceleration_std_y"
- "freq_body_acceleration_std_z"
- "freq_body_acceleration_meanfreq_x"
- "freq_body_acceleration_meanfreq_y"
- "freq_body_acceleration_meanfreq_z"
- "freq_body_acceleration_jerk_mean_x"
- "freq_body_acceleration_jerk_mean_y"
- "freq_body_acceleration_jerk_mean_z"
- "freq_body_acceleration_jerk_std_x"
- "freq_body_acceleration_jerk_std_y"
- "freq_body_acceleration_jerk_std_z"
- "freq_body_acceleration_jerk_meanfreq_x"
- "freq_body_acceleration_jerk_meanfreq_y"
- "freq_body_acceleration_jerk_meanfreq_z"
- "freq_body_gyroscope_mean_x"
- "freq_body_gyroscope_mean_y"
- "freq_body_gyroscope_mean_z"
- "freq_body_gyroscope_std_x"
- "freq_body_gyroscope_std_y"
- "freq_body_gyroscope_std_z"
- "freq_body_gyroscope_meanfreq_x"
- "freq_body_gyroscope_meanfreq_y"
- "freq_body_gyroscope_meanfreq_z"
- "freq_body_acceleration_magnitude_mean"
- "freq_body_acceleration_magnitude_std"
- "freq_body_acceleration_magnitude_meanfreq"
- "freq_body_acceleration_jerk_magnitude_mean"
- "freq_body_acceleration_jerk_magnitude_std"
- "freq_body_acceleration_jerk_magnitude_meanfreq"
- "freq_body_gyroscope_magnitude_mean"
- "freq_body_gyroscope_magnitude_std"
- "freq_body_gyroscope_magnitude_meanfreq"
- "freq_body_gyroscope_jerk_magnitude_mean"
- "freq_body_gyroscope_jerk_magnitude_std"
- "freq_body_gyroscope_jerk_magnitude_meanfreq"
- "angle_time_body_acceleration_mean_gravity"
- "angle_time_body_acceleration_jerkmean_gravitymean"
- "angle_time_body_gyroscope_mean_gravitymean"
- "angle_time_body_gyroscope_jerkmean_gravitymean"
- "angle_x_gravitymean"
- "angle_y_gravitymean"
- "angle_z_gravitymean"
