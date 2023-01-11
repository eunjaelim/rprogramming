#산점도

wt <- mtcars$wt
wt
mpg <- mtcars$mpg
mpg
plot(wt,mpg, # 2개 변수(x축, y축)
     main= "Car Weight-mpg",
     xlab = "Car Weight",
     ylab = "Miles per Gallon",
     col = "red",
     pch = 2
     )

vars <- c("mpg","disp","drat","wt") #대상 변수
target <- mtcars[,vars] # 대상 데이터
target
pairs(target,
      main = "Multi plots")

head(iris)
iris.2 <- iris[,3:4]
point <- as.numeric(iris$Species)
color <- c("red","green","blue")
plot(iris.2,
     main = "Iris plot",
     pch = c(point),
     col = color[point]
)

# 과제 

#1
cars
vars <- c('speed','dist')

speed <- cars$speed
dist <- cars$dist

plot(speed,dist,
     main= "Cars speed dist",
     xlab= "speed",
     ylab = "dist",
     col="red",
     pch= 3
         )

# speed가 올라갈 수록 dist가 커지는 양의 상관관계

#2

head(pressure)
temp <- pressure$temperature
press <- pressure$pressure

plot(temp,press,
     main = "pressure & temperature",
     xlab = "temperature",
     ylab = "pressure",
     col = "blue",
     pch = 3  
     )

# 기온이 올라갈 수록 압력이 점차 증가하는 양의 상관관계

#3

head(state.x77)
vars <- c('Population','Income','Illiteracy','Area')
target <- state.x77[,vars]
target
pairs(target,
      main='multi plots'
      )
#4

head(iris)
vars = c('Petal.Length','Sepal.Width')
target = iris[,vars]
point <- as.numeric(iris$Species)
color <- c("red","blue","green") # setosa , versicolor, virginica
plot(target,
     main = "width & Lengh $ Species",
     xlab = "Width",
     ylab = "Length",
     col=color[point]
     )

# setosa는 길이가 가장 길고 폭이 가장 작다.
# versicolor는 폭이 중간이고 길이가 짧다.
# virginica는 길이가 짧고 폭이 넓다.