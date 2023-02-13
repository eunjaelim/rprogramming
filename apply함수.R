# R을 쓸 때는 While , for 권장하지 않음
# 처리 속도가 느려지는 문제 
# 주로 apply 계열 함수 사용

# apply 함수

for (i in 1:4){
  print(mean(iris[,i]))
}  

apply(iris[,1:4],1,mean) # row 방향으로 함수 적용

apply(iris[,1:4],2,mean) # col 방향으로 함수 적용

# lapply 함수
# 리스트, 2차원 형태에 적용 가능(리스트 형태 주로 사용) 

lapply(iris[,1:4],mean)
abc <- list(mtcars[,1],mtcars[,2],mtcars[,3],mtcars[,4])
lapply(abc, mean)
lapply(abc,mean)[[1]]

# sapply 함수
# 디폴트 값이 결과가 벡터로 출력

sapply(iris[,1:4],mean)
sapply(iris[,1:4],mean,simplify = F) # 결과가 리스트

# 사용자 정의 함수 사용
myfunc <- function(x) {
  a <- max(x)
  b <- min(x)
  return(a-b)
}
sapply(iris[,1:4],myfunc)
