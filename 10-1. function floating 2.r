
# 7. 그래프 그리기

library(dplyr)
library(magrittr)

f <- function(x) (x^4 - 15*x^2 - 10*x + 24) / 10

my.graph <- function(func, length) {
  plot (func, xlim=c(-length, length), ylim=c(-length, length), col="red", xlab="x", ylab="f(x)")
  abline(v=0, h=0)  
}

my.graph(f, 10)
