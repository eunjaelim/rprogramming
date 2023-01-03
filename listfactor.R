#list, factor
#vector -> 동일한 타입만 / list -> 서로 다른 타입 저장 가능
member <- list(name='kim',address='pusan',tel='010-1234-5678',
               age=20, married=FALSE)
member
member[[3]]
member$name

# factor : 특정 종류의 값만 가질 수 있는 데이터타입
blood.vec <-c("A","B","AB","O","B")
blood.type <- factor(c("A","B","AB","O","B"))
blood.type
is.factor(blood.type)

blood.typE[6]<-"D" #error
blood.type
as.numeric(blood.type)                  
levels(blood.type)
levels(blood.type)[2]

#과제
head(iris)
myiris <- list(Group=iris$Species,Data<-iris[1:4])
myiris[[1]]
myiris[[2]]

weekdays <-factor(c("sun","mon","tus","wed","fri","sat"))
weekdays
as.numeric(weekdays)
