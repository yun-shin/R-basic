
# 1. (10점) 3차원 좌표공간의 두 점 A(2.7, 0.5, 1.2), B(3.3, 2.5, 0) 에서 
# 같은 거리에 있는 축 위의 점의 좌표가 (0, a, 0)일 때, a의 값을 R 코딩으로 구하시오.

library(dplyr)
library(magrittr)
library(rootSolve)

f <- function (x) {
  (((2.7 - 0)^2 + (0.5 - x)^2 + (1.2 - 0)^2) %>% sqrt) -
  (((3.3 - 0)^2 + (2.5 - x)^2 + (0 - 0)^2) %>% sqrt)
}

f <- function (x) {
  (sqrt((2.7 - 0)^2 + (0.5 - x)^2 + (1.2 - 0)^2)) -
    (sqrt((3.3 - 0)^2 + (2.5 - x)^2 + (0 - 0)^2))
}

curve(f, -5, 5, ylab="")
abline(h=0,col="red",lwd=0.5,lty=2)

uniroot(f,c(2,3))$root

