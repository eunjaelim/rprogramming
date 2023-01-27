Income <- c(125000,100000,40000,35000,41000,29000,35000,24000,50000,60000)
Years_of_Education = c(19,20,16,16,18,12,14,12,16,17)
tbl <- data.frame(cbind(Income,Years_of_Education))
tbl
plot(Income~Years_of_Education,data=tbl,
     main= "Years of Education & Income",
     xlab = "Years of Education",
     ylab = "Income",
     col = "red",
     pch = 10)
# 교육 연수가 길어질수록 소득이 점차 증가됨

res <- lm(Years_of_Education~Income,data=tbl)
abline(res)
cor(Years_of_Education,Income)
cor(tbl[,1:2])

GPA <- c(3.1,2.4,2.0,3.8,2.2,3.4,2.9,3.2,2.7,2.5)
TvInHoursPerWeek = c(14,10,20,7,25,9,15,13,4,21)
tbl <- data.frame(cbind(GPA,TvInHoursPerWeek))
tbl
plot(GPA~TvInHoursPerWeek,data=tbl,
     main = "TV in hours per week & GPA",
     xlab = "TV in hours per week",
     ylab = "GPA",
     col = "red",
     pch = 10
     )
# 주당 티비 시청 시간이 많을수록 GPA가 낮아지는 경향이 있다.

res <- lm(GPA~TvInHoursPerWeek,data=tbl)
abline(res)
cor(TvInHoursPerWeek,GPA)
cor(tbl[,1:2])

# 음의 상관 : -6.257459
