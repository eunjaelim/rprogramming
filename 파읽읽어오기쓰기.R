setwd("c:/Rworks")
mydata <- read.csv("test.csv",header = TRUE)
mydata

head(mydata)
tail(mydata)
mydata[2,3]
nrow(mydata)
ncol(mydata)
dim(mydata)

myRow1 <- mydata[2,]
myRow2 <- mydata[,3]

mynew <- mydata[,c(2,3)]
write.csv(mynew, "kid_new.csv", row.names=F,quote=F)

mydata <-read.csv("c:/Rworks/test.csv",header=TRUE)

mydata1 <- read.csv(file.choose(),header=TRUE)
mydata1

#과제
df<-as.data.frame(state.x77)
df1<-df[df$Income>=5000,]
df1
write.csv(df1,"rich_state.csv")
ds<-read.csv("c:/Rworks/rich_state.csv",header=TRUE)
ds
