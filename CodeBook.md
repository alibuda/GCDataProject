#The CodeBook of data set resultData

==================================================================

##Variable.name and Description

	Variable.name					Description
	
1	Sbuject							Sbuject
2	Act								activity

	
	Variable.name					Discription
	
									the average of variable in the raw data 
									for each activity and each subject
									
3	tBodyAccMX_Ave					tBodyAcc-mean()-X
4	tBodyAccMY_Ave					tBodyAcc-mean()-Y
5	tBodyAccMZ_Ave					tBodyAcc-mean()-Z
6	tBodyAccSX_Ave					tBodyAcc-std()-X
7	tBodyAccSY_Ave					tBodyAcc-std()-Y
8	tBodyAccSZ_Ave					tBodyAcc-std()-Z
9	tGravityAccMX_Ave				tGravityAcc-mean()-X
10	tGravityAccMY_Ave				tGravityAcc-mean()-Y
11	tGravityAccMZ_Ave				tGravityAcc-mean()-Z
12	tGravityAccSX_Ave				tGravityAcc-std()-X
13	tGravityAccSY_Ave				tGravityAcc-std()-Y
14	tGravityAccSZ_Ave				tGravityAcc-std()-Z
15	tBodyAccJerkMX_Ave				tBodyAccJerk-mean()-X
16	tBodyAccJerkMY_Ave				tBodyAccJerk-mean()-Y
17	tBodyAccJerkMZ_Ave				tBodyAccJerk-mean()-Z
18	tBodyAccJerkSX_Ave				tBodyAccJerk-std()-X
19	tBodyAccJerkSY_Ave				tBodyAccJerk-std()-Y
20	tBodyAccJerkSZ_Ave				tBodyAccJerk-std()-Z
21	tBodyGyroMX_Ave					tBodyGyro-mean()-X
22	tBodyGyroMY_Ave					tBodyGyro-mean()-Y
23	tBodyGyroMZ_Ave					tBodyGyro-mean()-Z
24	tBodyGyroSX_Ave					tBodyGyro-std()-X
25	tBodyGyroSY_Ave					tBodyGyro-std()-Y
26	tBodyGyroSZ_Ave					tBodyGyro-std()-Z
27	tBodyGyroJerkMX_Ave				tBodyGyroJerk-mean()-X
28	tBodyGyroJerkMY_Ave				tBodyGyroJerk-mean()-Y
29	tBodyGyroJerkMZ_Ave				tBodyGyroJerk-mean()-Z
30	tBodyGyroJerkSX_Ave				tBodyGyroJerk-std()-X
31	tBodyGyroJerkSY_Ave				tBodyGyroJerk-std()-Y
32	tBodyGyroJerkSZ_Ave				tBodyGyroJerk-std()-Z
33	tBodyAccMagM_Ave				tBodyAccMag-mean()
34	tBodyAccMagS_Ave				tBodyAccMag-std()
35	tGravityAccMagM_Ave				tGravityAccMag-mean()
36	tGravityAccMagS_Ave				tGravityAccMag-std()
37	tBodyAccJerkMagM_Ave			tBodyAccJerkMag-mean()
38	tBodyAccJerkMagS_Ave			tBodyAccJerkMag-std()
39	tBodyGyroMagM_Ave				tBodyGyroMag-mean()
40	tBodyGyroMagS_Ave				tBodyGyroMag-std()
41	tBodyGyroJerkMagM_Ave			tBodyGyroJerkMag-mean()
42	tBodyGyroJerkMagS_Ave			tBodyGyroJerkMag-std()
43	fBodyAccMX_Ave					fBodyAcc-mean()-X
44	fBodyAccMY_Ave					fBodyAcc-mean()-Y
45	fBodyAccMZ_Ave					fBodyAcc-mean()-Z
46	fBodyAccSX_Ave					fBodyAcc-std()-X
47	fBodyAccSY_Ave					fBodyAcc-std()-Y
48	fBodyAccSZ_Ave					fBodyAcc-std()-Z
49	fBodyAccJerkMX_Ave				fBodyAccJerk-mean()-X
50	fBodyAccJerkMY_Ave				fBodyAccJerk-mean()-Y
51	fBodyAccJerkMZ_Ave				fBodyAccJerk-mean()-Z
52	fBodyAccJerkSX_Ave				fBodyAccJerk-std()-X
53	fBodyAccJerkSY_Ave				fBodyAccJerk-std()-Y
54	fBodyAccJerkSZ_Ave				fBodyAccJerk-std()-Z
55	fBodyGyroMX_Ave					fBodyGyro-mean()-X
56	fBodyGyroMY_Ave					fBodyGyro-mean()-Y
57	fBodyGyroMZ_Ave					fBodyGyro-mean()-Z
58	fBodyGyroSX_Ave					fBodyGyro-std()-X
59	fBodyGyroSY_Ave					fBodyGyro-std()-Y
60	fBodyGyroSZ_Ave					fBodyGyro-std()-Z
61	fBodyAccMagM_Ave				fBodyAccMag-mean()
62	fBodyAccMagS_Ave				fBodyAccMag-std()
63	fBodyBodyAccJerkMagM_Ave		fBodyBodyAccJerkMag-mean()
64	fBodyBodyAccJerkMagS_Ave		fBodyBodyAccJerkMag-std()
65	fBodyBodyGyroMagM_Ave			fBodyBodyGyroMag-mean()
66	fBodyBodyGyroMagS_Ave			fBodyBodyGyroMag-std()
67	fBodyBodyGyroJerkMagM_Ave		fBodyBodyGyroJerkMag-mean()
68	fBodyBodyGyroJerkMagS_Ave		fBodyBodyGyroJerkMag-std()

==================================================================
##Units

(Copy from the raw dataset README.txt)

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

Notes: 
======
- Features are normalized and bounded within [-1,1].