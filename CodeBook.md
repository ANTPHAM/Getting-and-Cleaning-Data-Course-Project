The tidy data set has 180 observations and 68 variables that are grouped by their average and standard deviation and by two key variables : "subject" and activitylabel"

#Variables in the tidy data set:
- subject:ranges from 1 to 30; ID of each subject
- activitylabel: the name of the activity observed
- other variables: 66 variables are estimated by their mean value and standard deviation (Question 2 in the project).

#Summarizing Data:

-> names(tidydat)

-[1] "activitylabel"     _       "subject"      _            "tbodyaccmeanx"           
-[4] "tbodyaccmeany"     _       "tbodyaccmeanz" _           "tbodyaccstdx"            
-[7] "tbodyaccstdy"      _       "tbodyaccstdz"   _          "tgravityaccmeanx"        
-[10] "tgravityaccmeany" _        "tgravityaccmeanz" _        "tgravityaccstdx"         
-[13] "tgravityaccstdy"  _        "tgravityaccstdz"  _        "tbodyaccjerkmeanx"       
-[16] "tbodyaccjerkmeany"_        "tbodyaccjerkmeanz"_        "tbodyaccjerkstdx"        
-[19] "tbodyaccjerkstdy" _        "tbodyaccjerkstdz" _        "tbodygyromeanx"          
-[22] "tbodygyromeany"   _        "tbodygyromeanz"   _        "tbodygyrostdx"           
-[25] "tbodygyrostdy"    _        "tbodygyrostdz"    _        "tbodygyrojerkmeanx"      
-[28] "tbodygyrojerkmeany"_       "tbodygyrojerkmeanz"_       "tbodygyrojerkstdx"       
-[31] "tbodygyrojerkstdy" _       "tbodygyrojerkstdz"_        "tbodyaccmagmean"         
-[34] "tbodyaccmagstd"  _         "tgravityaccmagmean" _      "tgravityaccmagstd"       
-[37] "tbodyaccjerkmagmean" _     "tbodyaccjerkmagstd"_       "tbodygyromagmean"        
-[40] "tbodygyromagstd" _         "tbodygyrojerkmagmean"_     "tbodygyrojerkmagstd"     
-[43] "fbodyaccmeanx" _           "fbodyaccmeany"_            "fbodyaccmeanz"           
-[46] "fbodyaccstdx"  _           "fbodyaccstdy" _            "fbodyaccstdz"            
-[49] "fbodyaccjerkmeanx"_        "fbodyaccjerkmeany"_        "fbodyaccjerkmeanz"       
-[52] "fbodyaccjerkstdx"_         "fbodyaccjerkstdy"_         "fbodyaccjerkstdz"        
-[55] "fbodygyromeanx" _          "fbodygyromeany" _          "fbodygyromeanz"          
-[58] "fbodygyrostdx" _           "fbodygyrostdy" _           "fbodygyrostdz"           
-[61] "fbodyaccmagmean"  _        "fbodyaccmagstd"_           "fbodybodyaccjerkmagmean" 
-[64] "fbodybodyaccjerkmagstd"_   "fbodybodygyromagmean"_     "fbodybodygyromagstd"     
-[67] "fbodybodygyrojerkmagmean"_ "fbodybodygyrojerkmagstd" 

-> str(tidydat) 
- Classes ‘grouped_df’, ‘tbl_df’, ‘tbl’ and 'data.frame':	180 obs. of  68 variables:
- $ activitylabel _          : chr  "LAYING" "LAYING" "LAYING" "LAYING" ...
- $ subject     _            : int  1 2 3 4 5 6 7 8 9 10 ...
- $ tbodyaccmeanx     _      : num  0.222 0.281 0.276 0.264 0.278 ...
- $ tbodyaccmeany       _    : num  -0.0405 -0.0182 -0.019 -0.015 -0.0183 ...
- $ tbodyaccmeanz       _    : num  -0.113 -0.107 -0.101 -0.111 -0.108 ...
 ...........................
-Source: local data frame [6 x 68]
.................................................................................


#Feature selection ( see also feature_info.txt):

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).

These signals were used to estimate variables of the feature vector for each pattern:
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

For example:

tbodyacc-xyz

tgravityacc-xyz

tbodyaccjerk-xyz

tbodygyro-xyz

tbodygyrojerk-xyz

tbodyaccmag

tgravityaccmag

tbodyaccjerkmag

tbodygyromag

tbodygyrojerkmag

fbodyacc-xyz

fbodyaccjerk-xyz

fbodygyro-xyz

fbodyaccmag

fbodyaccjerkmag


fbodygyromag

fbodygyrojerkmag

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

The complete list of variables of each feature vector is available in 'features.txt'


