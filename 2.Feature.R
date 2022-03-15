# 데이터 세트 확인
iris
# 데이터 구조
str(iris)
# 데이터 구조 값을 사용해야 하는 경우, 즉 구조파악이 목적이 아닌
# 값 자체를 사용할 때 row, col 개수 확인
nrow(iris)
ncol(iris)
dim(iris)

# column명 확인
ls(iris)
mean(iris$Species)  # 요소의 자료형 주의

# 데이터 앞부분 불러오기
head(iris)
head(iris,n=10)
# 데이터 끝부분 불러오기
tail(iris)
tail(iris, n=14)


### 기술통계량 ###
# 데이터를 요약한 대표값

# 최소/최대 범위
min(iris$Sepal.Length)
max(iris$Sepal.Length)
range(iris$Sepal.Length)
# 평균
mean(iris$Sepal.Length)
mean(iris[,1])
# 중앙값
median(iris$Sepal.Length)
# 분위수 : 전체 데이터를 4등분한 지점
quantile(iris$Sepal.Length)
quantile(iris$Sepal.Length, probs=0.3)  #하위 30%
# 분산
var(iris$Sepal.Length)
# 표준편차(Standard Deviation)
sd(iris$Sepal.Length)
# 첨도(kurtosis) : 데이터 분포가 정규분포 대비 얼마나 뾰족한지
#   양수 - 정규분포보다 더 뾰족, 음수 - 덜 뾰족
# install.packages('psych')
library(psych)
kurtosi(iris$Sepal.Length)
# 왜도(skewness) : 정규분포 대비 비대칭성
skew(iris$Sepal.Length)
# 빈도
# install.packages('descr')
frea_iris<-freq(iris$Sepal.Length)