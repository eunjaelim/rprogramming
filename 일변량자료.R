# 일변량 자료 : 변수가 하나 질적자료 
# table() 함수는 도수분포표를 만들어줌.

ans = c("Y","Y","N","Y","Y")
table(ans) # 도수분포표 츌력
table(ans)/length(ans) # 비율 출력

iris$Species
table(iris$Species)
table(iris$Species)/length(iris$Species)

# 막대그래프

favorite.color <- c("red","green","yellow","red","green","red","red")
sum <- table(favorite.color) # 도수분포표
sum
barplot(sum, main = "Favorite color")

head(mtcars)

par(mfrow=c(1,3)) # 1x3 윈도우 생성

barplot(table(mtcars$carb),
        main="Barplot of Carburetors",
        xlab="#of Carburetors",
        ylab="frequency",
        col="blue")
barplot(table(mtcars$cyl),
        main="Barplot of cyl", 
        xlab="#of cylender", #x축 이름
        ylab="frequency",    #y축 이름
        col="red")
barplot(table(mtcars$gear),
        main="Barplot of Gear",
        xlab="of gears",
        ylab="frequency",
        col="green")

favorite.color <- c("red","green","yellow","red","green","red","red")
sum <- table(favorite.color)
pie(sum,main="Favorite color")
