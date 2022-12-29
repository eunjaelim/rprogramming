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

#벡터의 연산
 # 각각의 원소에 계산됨
d <- c(1,4,3,7,8)
2*d
d-5
3*d+4

#벡터의 연결

x <- c(1,2,3)
y <- c(4,5)
c(x,y)
z<-c(x,y)
z

x<- c(1,2,3)
y<- c(4,5,6)
x+y
x-y
x/y
z<-x+y
z

#벡터의 계산 명령어

d<-c(1,2,3,4,5,6,7,8,9,10)
sum(d)
sum(2*d)
length(d)
mean(d[1:5])
max(d)
min(d)
sort(d) # 오름차순
sort(d, decreasing = FALSE) # 오름차순
sort(d, decreasing = TRUE) # 내림차순

v1 <- median(d)
v1
v2 <- sum(d)/length(d)
v2

# 함수 

 # 함수, 매개변수의 정확한 명칭을 사용해야 함 
v1 <- c(4,2,3,1,6,10,8,9)

sort(x = v1,decreasing = TRUE) # 메개변수 이름, 값, 함수
sort(v1,FALSE) # 매개변수 값만 준 경우
sort(v1)

# 논리연산자

d <- c(1,2,3,4,5,6,7,8,9)
d>=5 #FALSE FALSE FALSE FALSE TRUE TRUE TRUE TRUE TRUE
d[d>5]
sum(d>5)  # 5보다 큰 값의 개수를 출력
sum(d[d>5]) # 5보다 큰 값의 합계를 출력
d==5

condi <- d > 5 & d < 8
d[condi]
