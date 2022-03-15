data <- iris
View(data)
library(descr)
freq(data$Sepal.Width)

# 막대그래프 - 표(table)를 그래프화
table(data$Species) #table : 대체로 범주형에 사용
barplot(table(data$Species))
barplot(table(data$Species), main='species', xlab='name', ylab='count',col=102:104)

# boxplot - 특성 분포 확인
boxplot(data[,1:4])
boxplot(data[,1:4], main='IRIS', xlab='특성', ylab='분포', col=6:27)

# 히스토그램 - 구간별 분포 확인
hist(data$Sepal.Length)
hist(data$Sepal.Length, main='Sepal Length', breaks=seq(4,8,0.2))

# 파이차트 - 비율 확인, 표 형태를 plot 해준다
table(data$Species)
pie(table(data$Species))

# 산점도(Scatter)
plot(data$Sepal.Length)
plot(data$Sepal.Length, data$Sepal.Width)
plot(x=data$Sepal.Length, y=data$Sepal.Width)

# 행렬식 plot
pairs(data)

library(psych)
pairs.panels(data)
