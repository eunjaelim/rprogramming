pre<-c(72,80,83,63,66,76,82)
post <-c(78,82,82,68,70,75,88)
exam1 <-data.frame(pre,post)
t.test(exam1$pre,exam1$post,mu=0,alternative="less",paired=T)

# 일원배치법
X <- c(84,83,82,85,89,86,93,94,96,89,89,87)
A <- c(rep(1,3),rep(2,3),rep(3,3),rep(4,3))
A <- factor(A)
aovdat1 <- data.frame(X,A)
aovmodel1 <-aov(X~A,data=aovdat1)
summary(aovmodel1)
# 유의수준 0.05 보다 작으므로 기각함으로 다른게 하나라도 있다.

# 이원배치법
y <- c(97.8,97.5,96.9,98.5,98.8,97.1,99.2,98.4,98.1,98.2,97.5,96.8)
surface <- c(rep(1,3),rep(2,3),rep(3,3),rep(4,3))
manu <- rep(c(1,2,3),4)
surface <- factor(surface)
manu <- factor(manu)
aovdat2 <- data.frame(surface, manu)
aovmodel2 <- aov(y ~ surface + manu, data = aovdat2 )
summary(aovmodel2)
