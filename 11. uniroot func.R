
# 함수 f 가 아래와 같다. f(z)=0.5 가 되는 z 값을 uniroot함수를 이용하여 구하시오.

library(dplyr)
library(magrittr)
library(rootSolve)

f <- function (x) (1 / 2*sqrt(2*pi)) * exp((-(x-5)^2) / 8)

z <- function (z) (f %>% integrate(-Inf, z)) $ value - 0.5


curve(f,-5,5,ylab="")
abline(h=0.5,col="red",lwd=0.5,lty=2)


uniroot(z,c(2,4))$root

