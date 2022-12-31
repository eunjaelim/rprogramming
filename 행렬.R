# MATRIX / DATAFRAME : 2차원 데이터 저장
# MATRIX : 저장하는 자료의 종류 동일 
# data frame : 숫자와 문자등 섞어 저장 가능, 컬럼 내에서는 동일한 타입

z <- matrix(1:20, nrow = 4, ncol = 5)
z

z2 <- matrix(1:50, nrow = 4, ncol = 5, byrow = T)
z2

x <- 1:4
y <- 5:8

m1 <- cbind(x,y) #열방향 결합
m1

m2 <- rbind(x,y) #행방향 결합
m2

m3 <- rbind(m2,x)
m3

m4 <- cbind(z,y)
m4

z #z[행,열] / 잘라낸 값은 벡터가 됨

z[2,3]
z[1,4]
z[2,] #2행에 있는 모든 값 
z[,4] #4열에 있는 모든 값

rownames(z) # 행의 이름 보이기
colnames(z) # 열의 이름 보이기
z
rownames(z) <- c ("row1","row2","row3","row4")
colnames(z) <- c("col1","col2","col3","col4","col5")
z

z[,"col3"]
z["row2",]

#과제1
m <- c(10,40,60,20)
f <- c(21,60,70,30)

score <-cbind(m,f)
colnames(score) <-c("male","female")
score
score[2,]
score[,2]
score[3,2]
