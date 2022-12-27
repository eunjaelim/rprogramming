#백터 - 1차원의 형태

x <- c(1,2,3) #숫자형 벡터
y <- c("a","b","c") #문자형 벡터
z <- c(TRUE, TRUE, FALSE, TRUE) #논리형 벡터

x #x에 저장된 값 출력
y

w <- c(1,2,3,"a","b","c") # 숫자가 문자형으로 바뀜 
w

x <- c(1,2,3)
z <- c("a","b","c")

v1 <= 50:90
v1

v2 <-c(1,2,5, 50:90)
v2

#seq : 일정한 간격의 숫자로 구성 된 벡터(sequence)
#seq(start,end,step)

v3 <- seq(1,101,3)
v3

v4 <- seq(0.1,1.0,0.1)
v4

#rep : 반복해서 저장할 때(repeat)

v5 <- rep(1,times = 5)
v5

v6 <- rep(1:5,time=3)
v6

v7 <- rep(c("a","b","c"),each=3)
v7

v8 <- rep(c("a","b","c"),times=3)
v8

#벡터에 이름 붙이기
score <- c(90,85,70)
names(score) <-c("John","Tom","Jane")
score
score[2]

#인덱스

d <- c(1,4,3,7,8)
d[1:3]
d[c(1,3,5)]
d[seq(1,5,2)]

#네거티브 인덱스 : 위치의 값을 제외한 나머지 숫자 출력

d <- c(1,4,3,7,8)
d[-2]
d[-c(3:5)]

#이름으로 값 추출하기

GNP <- c(2090,2450,960)
names(GNP) <- c("korea","Japan","Nepal")
GNP[1]
GNP["korea"]
GNP[c("korea","Nepal")]

#과제
d = c(101:200)
d
d[10]
d = c(101:190)
d
d = seq(102,200,2)
d
d.20 = d[1:20]
d.20
d.20[-5]
d.20[-c(5,7,9)]
