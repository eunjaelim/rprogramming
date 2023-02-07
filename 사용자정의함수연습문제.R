lgm <- function(x,y){
  for(i in 1:x){     # 1 부터 입력받은x 까지의 범위 i
    if(x%%i==0 & y%%i ==0){ # 입력받은 x와 i를 나눈 나머지가 0 그리고 y와 i를
                            # 나눈 나머지가 0 이라면
      max.common <- i  # 최대값 i를 저장
    }
  }
  return(max.common)# 최대값 i를 반환
}

result <-lgm(10,8)
result
result <- lgm(10,20)
result


############

maxmin <-function(result){
  a <- max(result)
  b <- min(result)
  return(list(max=a,min=b))

}


result <- maxmin(iris[,1])
result$max ; result$min
