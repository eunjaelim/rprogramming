str(iris)

summary(iris[,1]) # 첫 번째 컬럼
summary(iris[,2]) # 두 번째 컬럼
summary(iris[,"Petal.Length"]) # 컬럼 이름으로 가져오기
sumamry(iris$Petal.Width) # mean / median 격차가 크면 치우친 분포

sd(iris[,1])
sd(iris[,2])
sd(iris[,3])
sd(iris[,4]) # 표준편차(퍼짐정도)

par(mfrow=c(2,2)) 

boxplot(Sepal.Length~Species, data = iris,
        main = "Sepal.Length")
boxplot(Sepal.Width~Species, data = iris,
        main = "Sepal.Width")
boxplot(Petal.Length~Species, data = iris,
        main = "Petal.Length")
boxplot(Petal.Width~Species, data = iris,
        main = "Petal.Width")

point <- as.numeric(iris$Species)
color <- c("red","green","blue")
pairs(iris[,-5],
      pch = c(point),
      col = color[iris[,-5]]
)

