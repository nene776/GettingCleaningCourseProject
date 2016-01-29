# Code Book - tidyData.txt

For each record it is provided:

Activity (string) 

    Activity label.
    
        LAYING
        STANDING
        SITTING
        WALKING_DOWNSTAIRS 
        WALKING_UPSTAIRS 
        WALKING
    

Subject (integer)

    An identifier of the subject who carried out the experiment.
    
        1..30

    
A 79-feature vector with time and frequency domain variables (double)

    Every value is the average of the same variable values, regardingly to the same activity and the same subject. 
    Features are normalized and bounded within [-1,1].
    
Exactly, the features are:

    tBodyAcc-mean()-X 

    tBodyAcc-mean()-Y
    
    tBodyAcc-mean()-Z
    
    tBodyAcc-std()-X
    
    tBodyAcc-std()-Y
    
    tBodyAcc-std()-Z
    
    tGravityAcc-mean()-X
    
    tGravityAcc-mean()-Y
    
    tGravityAcc-mean()-Z
    
    tGravityAcc-std()-X
    
    tGravityAcc-std()-Y
    
    tGravityAcc-std()-Z
    
    tBodyAccJerk-mean()-X
    
    tBodyAccJerk-mean()-Y
    
    tBodyAccJerk-mean()-Z
    
    tBodyAccJerk-std()-X
    
    tBodyAccJerk-std()-Y
    
    tBodyAccJerk-std()-Z
    
    tBodyGyro-mean()-X
    
    tBodyGyro-mean()-Y
    
    tBodyGyro-mean()-Z
    
    tBodyGyro-std()-X
    
    tBodyGyro-std()-Y
    
    tBodyGyro-std()-Z
    
    tBodyGyroJerk-mean()-X
    
    tBodyGyroJerk-mean()-Y
    
    tBodyGyroJerk-mean()-Z
    
    tBodyGyroJerk-std()-X
    
    tBodyGyroJerk-std()-Y
    
    tBodyGyroJerk-std()-Z
    
    tBodyAccMag-mean()
    
    tBodyAccMag-std()
    
    tGravityAccMag-mean()
    
    tGravityAccMag-std()
    
    tBodyAccJerkMag-mean()
    
    tBodyAccJerkMag-std()
    
    tBodyGyroMag-mean()
    
    tBodyGyroMag-std()
    
    tBodyGyroJerkMag-mean()
    
    tBodyGyroJerkMag-std()
    
    fBodyAcc-mean()-X
    
    fBodyAcc-mean()-Y
    
    fBodyAcc-mean()-Z
    
    fBodyAcc-std()-X
    
    fBodyAcc-std()-Y
    
    fBodyAcc-std()-Z
    
    fBodyAcc-meanFreq()-X
    
    fBodyAcc-meanFreq()-Y
    
    fBodyAcc-meanFreq()-Z
    
    fBodyAccJerk-mean()-X
    
    fBodyAccJerk-mean()-Y
    
    fBodyAccJerk-mean()-Z
    
    fBodyAccJerk-std()-X
    
    fBodyAccJerk-std()-Y
    
    fBodyAccJerk-std()-Z
    
    fBodyAccJerk-meanFreq()-X
    
    fBodyAccJerk-meanFreq()-Y
    
    fBodyAccJerk-meanFreq()-Z
    
    fBodyGyro-mean()-X
    
    fBodyGyro-mean()-Y
    
    fBodyGyro-mean()-Z            
    
    fBodyGyro-std()-X
    
    fBodyGyro-std()-Y
    
    fBodyGyro-std()-Z              
    
    fBodyGyro-meanFreq()-X
    
    fBodyGyro-meanFreq()-Y
    
    fBodyGyro-meanFreq()-Z
    
    fBodyAccMag-mean()
    
    fBodyAccMag-std()
    
    fBodyAccMag-meanFreq()
    
    fBodyBodyAccJerkMag-mean()
    
    fBodyBodyAccJerkMag-std()
    
    fBodyBodyAccJerkMag-meanFreq()
    
    fBodyBodyGyroMag-mean()
    
    fBodyBodyGyroMag-std()
    
    fBodyBodyGyroMag-meanFreq()
    
    fBodyBodyGyroJerkMag-mean()
    
    fBodyBodyGyroJerkMag-std()
    
    fBodyBodyGyroJerkMag-meanFreq()
