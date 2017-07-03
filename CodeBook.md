variables, the data, and any transformations or work performed to clean up the data

## From subject.txt from the UCI HAR Dataset
subject
    individual subject from whom data was recorded
        1 - 30 unique identifier per subject

## From activity_labels.txt from the UCI HAR Dataset
activity
    activity performed during data recording
        walking
        walkingupstairs
        walkingdownstairs
        sitting
        standing
        laying
    edits: _ was removed from walking_upstairs and walking_downstairs
           all activities were changed to full lowercase from full uppercase

## Taken from the directory names containing the test and train data from the
## UCI HAR Dataset
group
    which group the subject was assigned to
        test
        train
    edits: this column was created to retain information that would not have
           been possible to recreate within the data frame

## Following names were taken from 'features.txt' and descriptions were amended
## from 'README.txt' and 'features_info.txt' from the UCI HAR Dataset

meanofTimeBodyAccelerationX
    Time domain signal captured at a constant rate of 50 Hz. Filtered using a
    median filter and a 3rd order low pass Butterworth filter with a corner
    frequency of 20 Hz to remove noise. Acceleration signal was then separated
    into body acceleration signal using another low pass Butterworth filter with
    a corner frequency of 0.3 Hz. Measured in standard gravitation units 'g'
        the mean value of linear body acceleration in X normalized between -1 and 1
    edits: renamed from tBodyAcc-mean()-X

meanofTimeBodyAccelerationY
    Time domain signal captured at a constant rate of 50 Hz. Filtered using a
    median filter and a 3rd order low pass Butterworth filter with a corner
    frequency of 20 Hz to remove noise. Acceleration signal was then separated
    into body acceleration signal using another low pass Butterworth filter with
    a corner frequency of 0.3 Hz. Measured in standard gravitation units 'g'
        the mean value of linear body acceleration in Y normalized between -1 and 1
    edits: renamed from tBodyAcc-mean()-Y

meanofTimeBodyAccelerationZ
    Time domain signal captured at a constant rate of 50 Hz. Filtered using a
    median filter and a 3rd order low pass Butterworth filter with a corner
    frequency of 20 Hz to remove noise. Acceleration signal was then separated
    into body acceleration signal using another low pass Butterworth filter with
    a corner frequency of 0.3 Hz. Measured in standard gravitation units 'g'
        the mean valueof linear body acceleration in Z normalized between -1 and 1
    edits: renamed from tBodyAcc-mean()-Z

stddevofTimeBodyAccelerationX
    Time domain signal captured at a constant rate of 50 Hz. Filtered using a
    median filter and a 3rd order low pass Butterworth filter with a corner
    frequency of 20 Hz to remove noise. Acceleration signal was then separated
    into body acceleration signal using another low pass Butterworth filter with
    a corner frequency of 0.3 Hz. Measured in standard gravitation units 'g'
        the standard deviationof linear body acceleration in X normalized between -1 and 1
    edits: renamed from tBodyAcc-std()-X

stddevofTimeBodyAccelerationY
    Time domain signal captured at a constant rate of 50 Hz. Filtered using a
    median filter and a 3rd order low pass Butterworth filter with a corner
    frequency of 20 Hz to remove noise. Acceleration signal was then separated
    into body acceleration signal using another low pass Butterworth filter with
    a corner frequency of 0.3 Hz. Measured in standard gravitation units 'g'
        the standard deviationof linear body acceleration in Y normalized between -1 and 1
    edits: renamed from tBodyAcc-std()-Y


stddevofTimeBodyAccelerationZ
    Time domain signal captured at a constant rate of 50 Hz. Filtered using a
    median filter and a 3rd order low pass Butterworth filter with a corner
    frequency of 20 Hz to remove noise. Acceleration signal was then separated
    into body acceleration signal using another low pass Butterworth filter with
    a corner frequency of 0.3 Hz. Measured in standard gravitation units 'g'
        the standard deviationof linear body acceleration in Z normalized between -1 and 1
    edits: renamed from tBodyAcc-std()-Z

meanofTimeGravityAccelerationX
    Time domain signal captured at a constant rate of 50 Hz. Filtered using a
    median filter and a 3rd order low pass Butterworth filter with a corner
    frequency of 20 Hz to remove noise. Acceleration signal was then separated
    into gravity acceleration signal using another low pass Butterworth filter
    with a corner frequency of 0.3 Hz. Measured in standard gravitation units 'g'
        the mean value of gravitational acceleration in X normalized between -1 and 1
    edits: renamed from tGravityAcc-mean()-X

meanofTimeGravityAccelerationY
    Time domain signal captured at a constant rate of 50 Hz. Filtered using a
    median filter and a 3rd order low pass Butterworth filter with a corner
    frequency of 20 Hz to remove noise. Acceleration signal was then separated
    into gravity acceleration signal using another low pass Butterworth filter
    with a corner frequency of 0.3 Hz. Measured in standard gravitation units 'g'
        the mean value of gravitational acceleration in Y normalized between -1 and 1
    edits: renamed from tGravityAcc-mean()-Y

meanofTimeGravityAccelerationZ
    Time domain signal captured at a constant rate of 50 Hz. Filtered using a
    median filter and a 3rd order low pass Butterworth filter with a corner
    frequency of 20 Hz to remove noise. Acceleration signal was then separated
    into gravity acceleration signal using another low pass Butterworth filter
    with a corner frequency of 0.3 Hz. Measured in standard gravitation units 'g'
        the mean value of gravitational acceleration in Z normalized between -1 and 1
    edits: renamed from tGravityAcc-mean()-Z

stddevofTimeGravityAccelerationX
    Time domain signal captured at a constant rate of 50 Hz. Filtered using a
    median filter and a 3rd order low pass Butterworth filter with a corner
    frequency of 20 Hz to remove noise. Acceleration signal was then separated
    into gravity acceleration signal using another low pass Butterworth filter
    with a corner frequency of 0.3 Hz. Measured in standard gravitation units 'g'
        the standard deviation of gravitational acceleration in X normalized between -1 and 1
    edits: renamed from tGravityAcc-std()-X

stddevofTimeGravityAccelerationY
    Time domain signal captured at a constant rate of 50 Hz. Filtered using a
    median filter and a 3rd order low pass Butterworth filter with a corner
    frequency of 20 Hz to remove noise. Acceleration signal was then separated
    into gravity acceleration signal using another low pass Butterworth filter
    with a corner frequency of 0.3 Hz. Measured in standard gravitation units 'g'
        the standard deviation of gravitational acceleration in Y normalized between -1 and 1
    edits: renamed from tGravityAcc-std()-Y

stddevofTimeGravityAccelerationZ
    Time domain signal captured at a constant rate of 50 Hz. Filtered using a
    median filter and a 3rd order low pass Butterworth filter with a corner
    frequency of 20 Hz to remove noise. Acceleration signal was then separated
    into gravity acceleration signal using another low pass Butterworth filter
    with a corner frequency of 0.3 Hz. Measured in standard gravitation units 'g'
        the standard deviation of gravitational acceleration in Z normalized between -1 and 1
    edits: renamed from tGravityAcc-std()-Z

meanofTimeBodyAccelerationJerkX
    Body linear acceleration and angular velocity were derived in time to obtain
    Jerk signals. Measured in standard gravitation units 'g'
        the mean valueof linear Jerk body acceleration in X normalized between -1 and 1
    edits: renamed from tBodyAccJerk-mean()-X

meanofTimeBodyAccelerationJerkY
    Body linear acceleration and angular velocity were derived in time to obtain
    Jerk signals. Measured in standard gravitation units 'g'
        the mean valueof linear Jerk body acceleration in Y normalized between -1 and 1
    edits: renamed from tBodyAccJerk-mean()-Y

meanofTimeBodyAccelerationJerkZ
    Body linear acceleration and angular velocity were derived in time to obtain
    Jerk signals. Measured in standard gravitation units 'g'
        the mean valueof linear Jerk body acceleration in Z normalized between -1 and 1
    edits: renamed from tBodyAccJerk-mean()-Z

stddevofTimeBodyAccelerationJerkX
    Body linear acceleration and angular velocity were derived in time to obtain
    Jerk signals. Measured in standard gravitation units 'g'
        the standard deviationof linear Jerk body acceleration in X normalized between -1 and 1
    edits: renamed from tBodyAccJerk-std()-X

stddevofTimeBodyAccelerationJerkY
    Body linear acceleration and angular velocity were derived in time to obtain
    Jerk signals. Measured in standard gravitation units 'g'
        the standard deviationof linear Jerk body acceleration in Y normalized between -1 and 1
    edits: renamed from tBodyAccJerk-std()-Y

stddevofTimeBodyAccelerationJerkZ
    Body linear acceleration and angular velocity were derived in time to obtain
    Jerk signals. Measured in standard gravitation units 'g'
        the standard deviationof linear Jerk body acceleration in Z normalized between -1 and 1
    edits: renamed from tBodyAccJerk-std()-Z

meanofTimeBodyAngularAccelerationX
    Time domain signal captured at a constant rate of 50 Hz. Filtered using a
    median filter and a 3rd order low pass Butterworth filter with a corner
    frequency of 20 Hz to remove noise. Acceleration signal was then separated
    into body acceleration signal using another low pass Butterworth filter with
    a corner frequency of 0.3 Hz. Measured in radians/second
        the mean value of angular body acceleration in X normalized between -1 and 1
    edits: renamed from tBodyGyro-mean()-X

meanofTimeBodyAngularAccelerationY
    Time domain signal captured at a constant rate of 50 Hz. Filtered using a
    median filter and a 3rd order low pass Butterworth filter with a corner
    frequency of 20 Hz to remove noise. Acceleration signal was then separated
    into body acceleration signal using another low pass Butterworth filter with
    a corner frequency of 0.3 Hz. Measured in radians/second
        the mean value of angular body acceleration in Y normalized between -1 and 1
    edits: renamed from tBodyGyro-mean()-Y

meanofTimeBodyAngularAccelerationZ
    Time domain signal captured at a constant rate of 50 Hz. Filtered using a
    median filter and a 3rd order low pass Butterworth filter with a corner
    frequency of 20 Hz to remove noise. Acceleration signal was then separated
    into body acceleration signal using another low pass Butterworth filter with
    a corner frequency of 0.3 Hz. Measured in radians/second
        the mean value of angular body acceleration in Z normalized between -1 and 1
    edits: renamed from tBodyGyro-mean()-Z

stddevofTimeBodyAngularAccelerationX
    Time domain signal captured at a constant rate of 50 Hz. Filtered using a
    median filter and a 3rd order low pass Butterworth filter with a corner
    frequency of 20 Hz to remove noise. Acceleration signal was then separated
    into body acceleration signal using another low pass Butterworth filter with
    a corner frequency of 0.3 Hz. Measured in radians/second
        the standard deviation of angular body acceleration in X normalized between -1 and 1
    edits: renamed from tBodyGyro-std()-X

stddevofTimeBodyAngularAccelerationY
    Time domain signal captured at a constant rate of 50 Hz. Filtered using a
    median filter and a 3rd order low pass Butterworth filter with a corner
    frequency of 20 Hz to remove noise. Acceleration signal was then separated
    into body acceleration signal using another low pass Butterworth filter with
    a corner frequency of 0.3 Hz. Measured in radians/second
        the standard deviation of angular body acceleration in Y normalized between -1 and 1
    edits: renamed from tBodyGyro-std()-Y

stddevofTimeBodyAngularAccelerationZ
    Time domain signal captured at a constant rate of 50 Hz. Filtered using a
    median filter and a 3rd order low pass Butterworth filter with a corner
    frequency of 20 Hz to remove noise. Acceleration signal was then separated
    into body acceleration signal using another low pass Butterworth filter with
    a corner frequency of 0.3 Hz. Measured in radians/second
        the standard deviation of angular body acceleration in Z normalized between -1 and 1
    edits: renamed from tBodyGyro-std()-Z

meanofTimeBodyAngularAccelerationJerkX
    Body linear acceleration and angular velocity were derived in time to obtain
    Jerk signals. Measured in radians/second
        the mean value of angular Jerk body acceleration in X normalized between -1 and 1
    edits: renamed from tBodyGyroJerk-mean()-X

meanofTimeBodyAngularAccelerationJerkY
    Body linear acceleration and angular velocity were derived in time to obtain
    Jerk signals. Measured in radians/second
        the mean value of angular Jerk body acceleration in Y normalized between -1 and 1
    edits: renamed from tBodyGyroJerk-mean()-Y

meanofTimeBodyAngularAccelerationJerkZ
    Body linear acceleration and angular velocity were derived in time to obtain
    Jerk signals. Measured in radians/second
        the mean value of angular Jerk body acceleration in Z normalized between -1 and 1
    edits: renamed from tBodyGyroJerk-mean()-Z

stddevofTimeBodyAngularAccelerationJerkX
    Body linear acceleration and angular velocity were derived in time to obtain
    Jerk signals. Measured in radians/second
        the standard deviation of angular Jerk body acceleration in X normalized between -1 and 1
    edits: renamed from tBodyGyroJerk-std()-X

stddevofTimeBodyAngularAccelerationJerkY
    Body linear acceleration and angular velocity were derived in time to obtain
    Jerk signals. Measured in radians/second
        the standard deviation of angular Jerk body acceleration in Y normalized between -1 and 1
    edits: renamed from tBodyGyroJerk-std()-Y

stddevofTimeBodyAngularAccelerationJerkZ
    Body linear acceleration and angular velocity were derived in time to obtain
    Jerk signals. Measured in radians/second
        the standard deviation of angular Jerk body acceleration in Z normalized between -1 and 1
    edits: renamed from tBodyGyroJerk-std()-Z

meanofTimeBodyAccelerationMagnitude
    The magnitude of the three-dimensional signals derived from body linear
    acceleration calculated using the Euclidean norm. Measured in standard
    gravitational units 'g'
        the mean value of linear body acceleration magnitude normalized between -1 and 1
    edits: renamed from tBodyAccMag-mean()

stddevofTimeBodyAccelerationMagnitude
    The magnitude of the three-dimensional signals derived from body linear
    acceleration calculated using the Euclidean norm. Measured in standard
    gravitational units 'g'
        the standard deviation of linear body acceleration magnitude normalized between -1 and 1
    edits: renamed from tBodyAccMag-std()

meanofTimeGravityAccelerationMagnitude
    The magnitude of the three-dimensional signals derived from gravitational linear
    acceleration calculated using the Euclidean norm. Measured in standard
    gravitational units 'g'
        the mean value of linear gravitational acceleration magnitude
        normalized between -1 and 1
    edits: renamed from tGravityAccMag-mean()

stddevofTimeGravityAccelerationMagnitude
    The magnitude of the three-dimensional signals derived from gravitational linear
    acceleration calculated using the Euclidean norm. Measured in standard
    gravitational units 'g'
        the standard deviation of linear gravitational acceleration magnitude
        normalized between -1 and 1
    edits: renamed from tGravityAccMag-std()

meanofTimeBodyAccelerationJerkMagnitude
    The magnitude of the three-dimensional signals derived from the body jerk
    linear acceleration calculated using the Euclidean norm. Measured in standard
    gravitational units 'g'
        the mean value of the body jerk acceleration magnitude normalized
        between -1 and 1
    edits: renamed from tBodyAccJerkMag-mean()
        
stddevofTimeBodyAccelerationJerkMagnitude
    The magnitude of the three-dimensional signals derived from the body jerk
    linear acceleration calculated using the Euclidean norm. Measured in standard
    gravitational units 'g'
        the standard deviation of the body jerk acceleration magnitude normalized
        between -1 and 1
    edits: renamed from tBodyAccJerkMag-std()

meanofTimeBodyAngularAccelerationMagnitude
    The magnitude of the three-dimensional signals derived from the angular
    acceleration calculated using the Euclidean norm. Measured in radians/second
        the mean value of the body angular acceleration magnitude normalized
        between -1 and 1.
    edits: renamed from tBodyGyroMag-mean()
        
stddevofTimeBodyAngularAccelerationMagnitude
    The magnitude of the three-dimensional signals derived from the angular
    acceleration calculated using the Euclidean norm. Measured in radians/second
        the standard deviation of the body angular acceleration magnitude normalized
        between -1 and 1.
    edits: renamed from tBodyGyroMag-std()

meanofTimeBodyAngularAccelerationJerkMagnitude
    The magnitude of the three-dimensional signals derived from the angular Jerk
    acceleration calculated using the Euclidean norm. Measured in radians/second
        the mean value of the body angular Jerk acceleration magnitude normalized
        between -1 and 1.
    edits: renamed from tBodyGyroJerkMag-mean()

stddevofTimeBodyAngularAccelerationJerkMagnitude-std()
    The magnitude of the three-dimensional signals derived from the angular Jerk
    acceleration calculated using the Euclidean norm. Measured in radians/second
        the standard deviation of the body angular Jerk acceleration magnitude normalized
        between -1 and 1.
    edits: renamed from tBodyGyroJerkMag-std()

meanofFFTransformBodyAccelerationX
    Fast Fourier Transform (FFT) applied to linear body acceleration. Measured in
    standard gravitational units 'g'
        mean of the values of linear body acceleration in X normalized between -1 and 1
    edits: renamed from fBodyAcc-mean()-X
    
meanofFFTransformBodyAccelerationY
    Fast Fourier Transform (FFT) applied to linear body acceleration. Measured in
    standard gravitational units 'g'
        mean of the values of linear body acceleration in Y normalized between -1 and 1
    edits: renamed from fBodyAcc-mean()-Y

meanofFFTransformBodyAccelerationZ
    Fast Fourier Transform (FFT) applied to linear body acceleration. Measured in
    standard gravitational units 'g'
        mean of the values of linear body acceleration in Z normalized between -1 and 1
    edits: renamed from fBodyAcc-mean()-Z

stddevofFFTransformBodyAccelerationX
    Fast Fourier Transform (FFT) applied to linear body acceleration. Measured in
    standard gravitational units 'g'
        standard deviation of linear body acceleration in X normalized between -1 and 1
    edits: renamed from fBodyAcc-std()-X

stddevofFFTransformBodyAccelerationY
    Fast Fourier Transform (FFT) applied to linear body acceleration. Measured in
    standard gravitational units 'g'
        standard deviation of linear body acceleration in Y normalized between -1 and 1
    edits: renamed from fBodyAcc-std()-Y

stddevofFFTransformBodyAccelerationZ
    Fast Fourier Transform (FFT) applied to linear body acceleration. Measured in
    standard gravitational units 'g'
        standard deviation of linear body acceleration in Z normalized between -1 and 1
    edits: renamed from fBodyAcc-std()-Z

meanofFFTransformBodyAccelerationJerkX
    Fast Fourier Transform (FFT) applied to linear Jerk body acceleration. Measured in
    standard gravitational units 'g'
        mean value of linear Jerk body acceleration in X normalized between -1 and 1
    edits: renamed from fBodyAccJerk-mean()-X

meanofFFTransformBodyAccelerationJerkY
    Fast Fourier Transform (FFT) applied to linear Jerk body acceleration. Measured in
    standard gravitational units 'g'
        mean value of linear Jerk body acceleration in Y normalized between -1 and 1
    edits: renamed from fBodyAccJerk-mean()-Y

meanofFFTransformBodyAccelerationJerkZ
    Fast Fourier Transform (FFT) applied to linear Jerk body acceleration. Measured in
    standard gravitational units 'g'
        mean value of linear Jerk body acceleration in Z normalized between -1 and 1
    edits: renamed from fBodyAccJerk-mean()-Z

stddevofFFTransformBodyAccelerationJerkX
    Fast Fourier Transform (FFT) applied to linear Jerk body acceleration. Measured in
    standard gravitational units 'g'
        standard deviation of linear Jerk body acceleration in X normalized between -1 and 1
    edits: renamed from fBodyAccJerk-std()-X

stddevofFFTransformBodyAccelerationJerkY
    Fast Fourier Transform (FFT) applied to linear Jerk body acceleration. Measured in
    standard gravitational units 'g'
        standard deviation of linear Jerk body acceleration in Y normalized between -1 and 1
    edits: renamed from fBodyAccJerk-std()-Y

stddevofFFTransformBodyAccelerationJerkZ
    Fast Fourier Transform (FFT) applied to linear Jerk body acceleration. Measured in
    standard gravitational units 'g'
        standard deviation of linear Jerk body acceleration in Z normalized between -1 and 1
    edits: renamed from fBodyAccJerk-std()-Z

meanofFFTransformBodyAngularAccelerationX
    Fast Fourier Transform (FFT) applied to angular body acceleration. Measured
    in radians/sec
        mean value of angular body acceleration in X normalized between -1 and 1
    edits: renamed from fBodyGyro-mean()-X

meanofFFTransformBodyAngularAccelerationY
    Fast Fourier Transform (FFT) applied to angular body acceleration. Measured
    in radians/sec
        mean value of angular body acceleration in Y normalized between -1 and 1
    edits: renamed from fBodyGyro-mean()-Y

meanofFFTransformBodyAngularAccelerationZ
    Fast Fourier Transform (FFT) applied to angular body acceleration. Measured
    in radians/sec
        mean value of angular body acceleration in Z normalized between -1 and 1
    edits: renamed from fBodyGyro-mean()-Z

stddevofFFTransformBodyAngularAccelerationX
    Fast Fourier Transform (FFT) applied to angular body acceleration. Measured
    in radians/sec
        standard deviation of angular body acceleration in X normalized between -1 and 1
    edits: renamed from fBodyGyro-std()-X

stddevofFFTransformBodyAngularAccelerationY
    Fast Fourier Transform (FFT) applied to angular body acceleration. Measured
    in radians/sec
        standard deviation of angular body acceleration in Y normalized between -1 and 1
    edits: renamed from fBodyGyro-std()-Y

stddevofFFTransformBodyAngularAccelerationZ
    Fast Fourier Transform (FFT) applied to angular body acceleration. Measured
    in radians/sec
        standard deviation of angular body acceleration in Z normalized between -1 and 1
    edits: renamed from fBodyGyro-std()-Z

meanofFFTransformBodyAccelerationMagnitude
    Fast Fourier Transform (FFT) applied to the magnitude of linear body
    acceleration. Measured in standard gravitation units 'g'
        mean value of the magnitude of linear body acceleration normalized 
        between -1 and 1
    edits: renamed from fBodyAccMag-mean()

stddevofFFTransformBodyAccelerationMagnitude
    Fast Fourier Transform (FFT) applied to the magnitude of linear body
    acceleration. Measured in standard gravitation units 'g'
        standard deviation of the magnitude of linear body acceleration normalized 
        between -1 and 1
    edits: renamed from fBodyAccMag-std()

meanofFFTransformBodyBodyAccelerationJerkMagnitude
    Fast Fourier Transform (FFT) applied to the magnitude of linear body jerk
    acceleration. Measured in standard gravitation units 'g'
        mean value of the magnitude of linear body jerk acceleration
        normalized between -1 and 1
    edits: renamed from fBodyBodyAccJerkMag-mean()

stddevofFFTransformBodyBodyAccelerationJerkMagnitude
    Fast Fourier Transform (FFT) applied to the magnitude of linear body jerk
    acceleration. Measured in standard gravitation units 'g'
        standard deviation of the magnitude of linear body jerk acceleration
        normalized between -1 and 1
    edits: renamed from fBodyBodyAccJerkMag-std()

meanofFFTransformBodyBodyAngularAccelerationMagnitude
    Fast Fourier Transform (FFT) applied to the magnitude of angular body
    acceleration. Measured in radians/sec
        mean value of the magnitude of angular body acceleration
        normalized between -1 and 1
    edits: renamed from fBodyBodyGyroMag-mean()

stddevofFFTransformBodyBodyAngularAccelerationMagnitude
    Fast Fourier Transform (FFT) applied to the magnitude of angular body
    acceleration. Measured in radians/sec
        standard deviation of the magnitude of angular body acceleration
        normalized between -1 and 1
    edits: renamed from fBodyBodyGyroMag-std()

meanofFFTransformBodyBodyAngularAccelerationJerkMagnitude
    Fast Fourier Transform (FFT) applied to the magnitude of angular Jerk body
    acceleration. Measured in radians/sec
        mean value of the magnitude of angular Jerk body acceleration
        normalized between -1 and 1
    edits: renamed from fBodyBodyGyroJerkMag-mean()

stddevofFFTransformBodyBodyAngularAccelerationJerkMagnitude
    Fast Fourier Transform (FFT) applied to the magnitude of angular Jerk body
    acceleration. Measured in radians/sec
        standard deviation of the magnitude of angular Jerk body acceleration
        normalized between -1 and 1
    edits: renamed from fBodyBodyGyroJerkMag-std()