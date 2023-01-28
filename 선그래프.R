# 선그래프
# 두 개의 변수 중 하나가 시간을 나타내는 값일 때 사용
# 시계열 분석

month = 1:12
late = c(5,8,7,9,4,6,12,13,8,6,6,4)

plot(month,  # x data
     late,  # y data
     main="Late students",
     type="o", # 그래프의 종류 선택
     col= "red",
     lty = 1, # 선의 종류 선택(1~6)
     lwd=1, # 선의 굵기
     xlab = "Month",
     ylab = "Late cnt"
     )

# 복수의 선그래프 그리기

month = 1:12
late1 = c(5,8,7,9,4,6,12,13,8,6,6,4)
late2 = c(4,6,5,8,7,8,10,11,6,5,7,3)

plot(month,
     late1,
     main="Late students",
     type="o", # 그래프의 종류 선택
     col= "red",
     lty = 1, # 선의 종류 선택(1~6)
     lwd=1, # 선의 굵기
     xlab = "Month",
     ylab = "Late cnt"
     )
lines(month,
      late2,
      type = "b",
      col="blue")

# 과제1
years = 2015:2026
population = c(51014,51245,51446,51635,51811,51973,32123,52261,52338,52504,52609,52704)
plot(years,
     population,
     type="o",
     col="blue",
     lty=5,
     lwd=1,
     xlab = years,
     ylab = population,
     )

# 과제2
years = c(20144,20151,20152,20153,20154,20161,20162,20163,20164,20171,20172,20173)
male = c(73.9,73.1,74.4,74.2,73.5,73.0,74.2,74.5,73.8,73.1,74.5,74.2)
female = c(51.4,50.5,52.4,52.4,51.9,50.9,52.6,52.7,51.2,51.5,53.2,53.1)

plot(years,
     male,
     main="남녀의 경제활동참가율 통계",
     type = "b",
     col="blue",
     lty=1,
     lwd=1,
     xlab = "years",
     ylab = "population",
     ylim = c(min(female),max(male))
     )
    
    
lines(years,
      female,
      type="b",
      col="red")

