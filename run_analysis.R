feature.names <- read.table("~/UCI HAR Dataset/features.txt",header = F)
temp <- strsplit(as.character(feature.names$V2),split = '-',fixed = T)
col.mean.log <- unlist(lapply(temp,function(x) any(x=='mean()')))
col.mean.log <- which(col.mean.log)
temp1 <- temp[col.mean.log]
col.mean.names <- unlist(lapply(temp1,function(x) ifelse(length(x)==3,paste(x[1],"M",x[3],sep = ''),paste(x[1],"M",sep = ''))))
col.std.log <- unlist(lapply(temp,function(x) any(x=='std()')))
col.std.log <- which(col.std.log)
temp2 <- temp[col.std.log]
col.std.names <- unlist(lapply(temp1,function(x) ifelse(length(x)==3,paste(x[1],"S",x[3],sep = ''),paste(x[1],"S",sep = ''))))
ext.col <- data.frame(col.num = c(col.mean.log,col.std.log),col.name = c(col.mean.names,col.std.names))
ext.col <- arrange(ext.col,col.num)

activity_labels <- read.table("~/UCI HAR Dataset/activity_labels.txt",header = F)

train.data <- read.table("~/UCI HAR Dataset/train/X_train.txt",header = F)
train.data <- train.data[,ext.col$col.num];names(train.data) <- ext.col$col.name
train.act.labels <- read.table("~/UCI HAR Dataset/train/y_train.txt",header = F)
train.data$Act <- factor(train.act.labels$V1,labels = activity_labels$V2)
train.subjects <- read.table("~/UCI HAR Dataset/train/subject_train.txt",header = F)
train.data$Subject <- train.subjects$V1

test.data <- read.table("~/UCI HAR Dataset/test/X_test.txt",header = F)
test.data <- test.data[,ext.col$col.num];names(test.data) <- ext.col$col.name
test.act.labels <- read.table("~/UCI HAR Dataset/test/y_test.txt",header = F)
test.data$Act <- factor(test.act.labels$V1,labels = activity_labels$V2)
test.subjects <- read.table("~/UCI HAR Dataset/test/subject_test.txt",header = F)
test.data$Subject <- test.subjects$V1

tot.data <- rbind(train.data,test.data)
tot.data <- arrange(tot.data,Subject,Act)


library(reshape2)
ext.col$col.name <- as.character(ext.col$col.name)
result <- tapply(tot.data[,ext.col$col.name[1]],list(tot.data$Subject,tot.data$Act),mean)
result <- as.data.frame(result)
result$Subject <- row.names(result)
result <- melt(result,id = c("Subject"),measure.vars = names(result)[1:6])
names(result)[2:3] <- c("Act",paste(ext.col$col.name[1],"_Ave",sep = ''))

for(i in ext.col$col.name[-1]){
    temp <- tapply(tot.data[,i],list(tot.data$Subject,tot.data$Act),mean)
    temp <- as.data.frame(temp)
    temp$Subject <- row.names(temp)
    temp <- melt(temp,id = c("Subject"),measure.vars = names(temp)[1:6])
    names(temp)[2:3] <- c("Act",paste(i,"_Ave",sep = ''))
    result <- merge(result,temp)
}

result$Subject <- as.numeric(result$Subject)
result <- arrange(result,Subject,Act)

write.table(result,file="~/resultData.txt",row.names = F)

# temp <- read.table("~/resultData.txt",header = T)
