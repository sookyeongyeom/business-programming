install.packages('styler')
library(styler)

a <- 7
a

name <- "aaa"
name

dept <- 'business'
dept

b <- 5
c <- 3

b + c
b - c
b * c
b / c
b %/% c #정수몫
b %% c #나머지
b ^ c #제곱

d <- 15
e <- 30

d > e
d <= e
d == e
d != e

n <- 'seoul'
m <- 33
(n == 'busan') & (m >= 30)

age <- 6
height <- 120
(height >= 120) | (age >= 7)

x1 <- c(1, 2, 3)
x1
class(x1)

x2 <- c('a', 'b', 'c')
x
class(x2)

x3 <- c('1', '2', '3')
x3
class(x3)


x4 <- c(TRUE, FALSE, T, F)
x4
class(x4)

x5 <- factor(c(1, 2, 3))
x5
class(x5)

v1 <- c(1, 2, 3, 4, 5)
v1

v2 <- c(1, 'a')
v2
class(v2)

city <- c('seoul', 'daejeon')
city

v3 <- c(1:5)
v3

e1 <- seq(1, 10)
e1

e2 <- seq(1, 8, 2)
e2

e3 <- seq(1, 8, by=2)
e3

e4 <- seq(20, 5, by=-5)
e4

f1 <- rep(1, 5)
f1

f2 <- c(1:3)
f3 <- rep(f2, times=2)
f3

f4 <- rep(f2, each=2)
f4

f5 <- c(1:5)
f5
f5[1]
f5[5]
f5[2:5]


g1 <- c('aaa', 'seoul', 80)
g1
g2 <- list('aaa', 'seoul', 80)
g2

str(g1)
str(g2)
class(g1)
class(g2)

g3 <- list(name='aaa',
           region='seoul',
           region=c(80,95,90))
g3

# 원소명과 원소값 출력
g3['name']
g3['region'] # 원소명 중복 시 첫 원소를 출력
g3[1]
g3[2]
g3[3]

# 원소값만 출력
g3[['name']]
g3[['region']]
g3[[2]]

# 원소명으로 출력
g3$name
g3$region
# g3$1 - ERROR

# 데이터프레임
name <- c('aaa', 'bbb', 'ccc')
major <- c('경영학과', '물리학과', '영문학과')
grade <- c(4, 3, 2)
score <- c(4.2, 3.7, 3.5)
student <- data.frame(name, major, grade, score)
student

student <- data.frame(name=c('aaa','bbb','ccc'),
                      major=c('경영학과','물리학과','영문학과'),
                      grade=c(4,3,2),
                      score=c(4.2,3.7,3.5))
student

# 열 출력
student[2]
# 행 출력
student[1,]
# 행,열 출력
student[1,2]

student[4]
student$score
student['score']
student[['score']]

student[3,2] <- '수학과'
student

# 파일 입출력
write.csv(student, file='csv/student.csv')
df <- read.csv('csv/student.csv')
df
