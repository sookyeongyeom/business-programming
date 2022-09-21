install.packages("readxl")
library(readxl)

df_pop <- read_excel("./homework2/birth.xlsx")
df_pop

# 뷰 테이블로 보기
View(df_pop)

# 기본 함수
abs(-10)
sqrt(9)
trunc(20.5)
round(21.382, digits=1) # 21.4
round(21.382, digits=2) # 21.38

# 기초통계량 함수
df_seoul <- read.csv("./homework2/seoul_weather.csv")
df_seoul

length(df_seoul$Avg_temp) # 개수
mean(df_seoul$Avg_temp) # 평균
median(df_seoul$Avg_temp) # 중앙값
max(df_seoul$Avg_temp)
min(df_seoul$Avg_temp)
range(df_seoul$Avg_temp) # 최솟값, 최댓값
sd(df_seoul$Avg_temp) # 표준편차
# 기초통계량 요약
# 최솟값, 1사분위값(25%), 중앙값, 3사분위값(75%), 최댓값
summary(df_seoul$Avg_temp)
# 모든 컬럼의 기초통계량 요약
summary(df_seoul)

# 문자열 처리 함수
k <- c('a대학', 'b대학', 'c대학')
substr(k, 1, 2) # 시작과 끝을 지정하여 문자열 일부 추출
gsub('대', '중', k) # replace All (비파괴)
paste(k, "교", sep="") # 문자열 합치기 (비파괴)
grep('b', k) # 패턴을 포함하는 원소의 인덱스 반환
grep('대학', k) # 패턴을 포함하는 모든 원소의 인덱스 반환
?grep

# 사용자 정의 함수
total <- function(x, y)
{
  s <- x + y
  return(s)
}
total(10, 20)

# if~else문
num <- 50

if(num %% 2 == 0)
{
  print('짝수')
} else
{
  print('홀수')
}

# ifelse문 (Short)
num <- 17
ifelse(num %% 2 == 0, '짝수', '홀수')

score <- c(88, 60, 95, 100, 70, 60)
ifelse(score >= 80, '합격', '불합격')

# 논리식을 활용한 조건검사 (, 필수)
# 데이터프레임 형식으로 반환
df_seoul[df_seoul$Avg_temp >= 0,]
df_seoul[df_seoul$Avg_temp >= 0,]['date']
# 값으로 반환
df_seoul[df_seoul$Avg_temp >= 0, 'date']
# & 연산
df_seoul[df_seoul$Avg_temp >= 2 & df_seoul$Max_temp <= 10,]
# | 연산
df_seoul[df_seoul$Avg_temp >= 2 | df_seoul$Max_temp <= 10,]

# 패키지 (cran에서 확인가능)
# 설치는 최초 한번만 하면 유지됨
install.packages('ggplot2')
library(ggplot2)

weather <- read.csv('./homework2/weather.csv')
View(weather)
str(weather)

# ggplot2로 그래프 그리기
# 1. 데이터 연결하기 ggplot(data, aes(x=x축데이터, y=y축데이터))
# 2. 그래프 모양 지정하기 geom_boxplot()
# 3. + 기호로 그래프 연결하기

ggplot(weather, aes(x=region, y=max_temp)) +
  geom_point()

ggplot(weather, aes(x=region, y=max_temp)) +
  geom_boxplot()