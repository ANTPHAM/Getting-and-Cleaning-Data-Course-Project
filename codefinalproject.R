#Getting and Cleaning Data Course Project

#Download the data in .zip format from "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip" and then unzip and load into R.

url<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
library(downloader)
download(url,destfile="Dataset.zip")
download.file(url,file.path(getwd(),"Dataset.zip"))
if (!file.exists("UCI HAR Dataset")) { 
  unzip("Dataset.zip") 
}

# 1.Merges the training and the test sets to create one data set.

traindata<-read.table("UCI HAR Dataset/train/X_train.txt")
str(traindata)#Classes 'data.frame':	7352 obs. of  561 variables
testdata<-read.table("UCI HAR Dataset/test/X_test.txt")
str(testdata)#Classes 'data.frame':	2947 obs. of  561 variables
Mergedat<-rbind(traindata,testdata)
dim(MerMergedat)
str(Mergedat)#Classes 'data.frame':	10299 obs. of  561 variables

#2.Extracts only the measurements on the mean and standard deviation for each measurement.
featuremeasure<-read.table("UCI HAR Dataset/features.txt")
meanstd<-grep("mean\\(\\)|std\\(\\)",featuremeasure[,2])
featurenum<-c(0,meanstd)
Mergedat<-Mergedat[,featurenum]
dim(Mergedat)

#3.Uses descriptive activity names to name the activities in the data set
trainLabelActivity<-read.table("UCI HAR Dataset/train/y_train.txt")
testLabelActivity<-read.table("UCI HAR Dataset/test/y_test.txt")
MergedatActivity<-rbind(trainLabelActivity,testLabelActivity)
dim(MergeLabelActivity)#[1] 10299     1
colnames(MergedatActivity)= c("activitylabel")
Mergedat<-cbind(MergedatActivity,Mergedat)
activity<-read.table("UCI HAR Dataset/activity_labels.txt");activity
activitynum=1
for(activityname in activity$V2){
  Mergedat$activitylabel<-gsub(activitynum,activityname,Mergedat$activitylabel)
  activitynum<-activitynum+1
    }
unique(Mergedat$activitylabel)


#4.Appropriately labels the data set with descriptive variable names.
trainSubject<-read.table("UCI HAR Dataset/train/subject_train.txt")
testSubject<-read.table("UCI HAR Dataset/test/subject_test.txt")
MergeSubject<-rbind(trainSubject,testSubject)
colnames(MergeSubject)<-c("subject")
Mergedat<-cbind(MergeSubject,Mergedat)
dim(Mergedat)


#5.From the data set in step 4, creates a second, 
#independent tidy data set with the average of each variable for each activity and each subject.
tidydat<- Mergedat %>% group_by(activitylabel,subject) %>% summarise_each(funs(mean))
write.table(format(tidydat,scientifique=T),"mean_tidy_dat.txt",row.names=F, col.names=F, quote=2)
read<-read.table(file.path(getwd(),"mean_tidy_dat.txt"))
#or
aggregate(Mergedat[,3:68], by=list(Mergedat$activitylabel,Mergedat$subject), FUN=mean)
