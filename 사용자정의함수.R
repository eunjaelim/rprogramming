mymax <- function(x,y){
  num.max<- x
  if (y > x){
    num.max<-y
  }
  return(num.max)
}
mymax(10,15)
mymax(20,15)

#default value / 초기값 지정


#mydiv <- function(x,y=2){
#  result <- x/y
#  return(result)
#}

mydiv(x=10,y=3)
mydiv(10,3)
mydiv(10)  #default값 작동

myfunc <- function(x,y){
  val.sum <- x+y
  val.mul <- x*y
  return(list(sum = val.sum, mul = val.mul))
}

result <- myfunc(5,8)
result$sum
result$mul

setwd("C:/Users/tjrwn/Desktop/R프로그래밍") # myfunc.R이 저장된 폴더
source("myfunc.R") # myfunc.R의 명령어 실행

a <- mydiv(20,4)
b <- mydiv(30,4)
a+b 
mydiv(mydiv(20,2),5)
