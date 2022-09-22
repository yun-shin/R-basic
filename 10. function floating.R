
# f(x)=x^2-4 그래프이다. 그림을 그리는 코드를 작성하라.

library(dplyr)
library(magrittr)

plot(NA, xlim=c(-5,5), ylim=c(-5,5), xlab="x",ylab="y")
abline(v=0)  
abline(h=0)  

f <- function(x) x^2 - 4

plot (f, -5, 5, col="red", xlab="x", ylab="y", add = T)

#---------------------------------------------------------

plot(NA, xlim=c(-5,5), ylim=c(-5,5), xlab="x",ylab="y")
abline(v=0)  
abline(h=0) 

f <- function(x) x^3

plot (f, -5, 5, col="red", xlab="x", ylab="y", add = T)