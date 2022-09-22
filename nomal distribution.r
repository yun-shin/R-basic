
# 6. 정규분포 문제

library(dplyr)
library(magrittr)
library(rootSolve)

# f(x)에 대한 확률 밀도 함수 그리기.
N <- function(x, m, o) 1/(2*sqrt(2*pi)) * (-((x-m)^2)/(2*o)) %>% exp
curve(N(x, 10, 4), -10, 30,col="red", ylab="")

# f(12) <= g(20) 이어야 함으로, f(12) == g(20)의 해당하는 m 값은 m의 최솟값이라 할 수 있음.
abline(v=c(12, 20), col="blue",lwd=0.5,lty=1)

# m의 최솟값으로 그린 확률밀도 함수
curve(N(x, 18, 4), -10, 30,col="forestgreen", add = T)

# 해당 범위 최댓값이 나오는 m값
curve(N(x, 22.5, 4), -10, 30,col="forestgreen", add = T)
abline(v=c(21, 24),col="green",lwd=0.5,lty=1)

# m = 22.5인 함수는 조건 2가 부합하지 않음.
curve(N(x, 10, 4), -10, 30,col="red")
curve(N(x, 22.5, 4), -10, 30,col="forestgreen", add = T)
abline(v=c(12, 20), col="blue",lwd=0.5,lty=1)

# Pr{21 <= Y <= 24} 범위에 해당하는 값이 가장 클려면, 해당 범위가 확률 밀도 함수의 중앙을 포함하여야 함.
# 그러므로 조건에 맞는 해당하는 m값 구함.
curve(N(12, 10, 4) - N(20, x, 4), -10, 30,col="purple", ylab="")
abline(h=0, col="blue",lwd=0.5,lty=1)
equation <- function (x) N(12, 10, 4) - N(20, x, 4)
uniroot(equation, c(20, 30)) $ root

# 값이 같은지 확인
N(12, 10, 4)
N(20, 22, 4)

# 조건에 맞는 m값의 그래프
curve(N(x, 22, 4), -10, 30,col="purple", ylab="")
abline(v=c(21, 24),col="green",lwd=0.5,lty=1)

# f(12) = g(22), 즉 m의 최대치
curve(N(x, 22, 4), -10, 30,col="purple", ylab="")
curve(N(x, 10, 4), -10, 30,col="red", add = T)
abline(v=c(12, 20), col="blue",lwd=0.5,lty=1)

# 범위를 받아 해당 범위 적분하는 함수.
f <- function (l1, l2) {
  N <- function(x, m, o) 1/(2*sqrt(2*pi)) * (-((x-22)^2)/(2*4)) %>% exp
  
  (N %>% integrate(l1, l2)) $ value
}

# Pr{21 <= Y <= 24} 범위 적분.
f(21, 24)
