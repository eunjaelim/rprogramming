city <- c("Seoul","Tokyo","Washington")
rank <- c(1,3,2)
city.info <- data.frame(city,rank)
city.info

#데이터 프레임화 시키면 행렬과 비슷하게 작동
city.info[3,1]
city.info[2,]
city.info[,1]

iris
is.data.frame(iris)
iris[,"Species"] # 결과가 벡터
iris["Species"] # 데이터 프레임 형태
iris$Species # 결과가 벡터(데이터프레임만 가능)
iris[,c(1,2)]
iris
iris[,c(1,3,5)]
iris[,c("Sepal.Length","Species")]
iris[1:50,]
iris[1:50,c(1,3)]

#과제

id = c(10,20,30,40,50)
name = c("Jhon","Tom","Paul","Jane","Grace")
score = c(95,46,98,74,85)
df <- data.frame(id,name,score)
df
df$score
df[,3]
df[,'score']
df[,c("id","score")]
df[c(2,3),]
df[2,3]

# 매트릭스와 데이터프레임 다루기
dim(iris)
nrow(iris) # number of row
ncol(iris) # number of column
names(iris) # 컬럼의 이름
head(iris)
tail(iris)

str(iris) # 데이터셋 요약 보기
unique(iris[,5]) # 종의 종류 보기(중복제거)
table(iris[,"Species"])

# 합계 / 평균
colSums(iris[,-5]) #열별 합계
colMeans(iris[,-5])# 열별 평균
rowSums(iris[,-5]) # 행별 합계
rowMeans(iris[,-5])# 행별 평균

# 행과 열 변환(transpose)
z<-matrix(1:20, nrow=4, ncol=5)
z
t(z)

head(iris)
IR.1 <- subset(iris, Species=="setosa")
IR.1
IR.2 <- subset(iris,Sepal.Length > 5 & Sepal.Width>4.0)
IR.2
a <- matrix(1:20,4,5)
b <- matrix(21:40,4,5)
a
b
a+b
a-b
b-a
b/a
a*b
3*a
b-5
2*a + 3*b

a <- a*3
b <- b*3
a
b

class(iris)
class(state.x77)
is.matrix(iris)
is.data.frame(iris)

#행렬 <-> 데이터프레임
iris.m <- as.matrix(iris[,1:4])
head(iris.m)
class(iris.m)

st <- data.frame(state.x77)
head(st)     
class(st)

tmp <- iris[,-5]
class(tmp)
tmp2<-as.matrix(tmp)
class(tmp2)

st<-data.frame(state.x77)
class(st)
st

colnames(st)
rownames(st)
str(st)
rowSums(st)
rowMeans(st)
colSums(st)
colMeans(st)
st["Florida",]
st[,'Income']
st['Texas','Area']
head(st)
st['Ohio',1:2]
subset(st,Population >=5000)
subset(st,Income >= 4000,select=c('Population','Income','Area'))
length(which(st$Income>=4500))
subset(st,st$Area>=10000 & st$Frost >= 120,select=c('Area','Frost'))
head(st)
abs(mean(st[st$Illiteracy <2.0,"Income"])-mean(st[st$Illiteracy >=2.0,'Income']))
names(st)
row.names(st[which.max(st$Life.Exp),])
subset(st, st['Pennsylvania','Income']<st$Income)

st
# 인구가 1000 미만인 나라의 소득의 평균
mean(st[st$Population < 1000,"Income"])

## 인구가 1000 미만인 나라의 소득 평균과
#인구가 10000 이상인 나라의 소득 평균의 격차
abs(mean(st[st$Population < 1000,"Income"])-mean(st[st$Population >=10000,"Income"]))

