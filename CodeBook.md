# Code Book - tidyData.txt

For each record it is provided:
======================================

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
    Every value is the average of the same variable values, regardingly to the same activity and the same subject. Features are normalized and bounded within [-1,1].
        -1..1
More exactly, the features are:

