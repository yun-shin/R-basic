library(dplyr)
library(magrittr)

f <- function(z) {
  d <- function(x) 1/(2*sqrt(2*pi)) * (-((x-5)^2)/8) %>% exp
  
  (d %>% integrate(-Inf, 0)) $ value
}
0 %>% f


# 머한이 버전
f <- function(z) {      
  g <- function(x) {
    (2*sqrt(2*pi))^-1 * exp(-(x-5)^2 * 8^-1)
  }
  
  (g %>% integrate(-Inf, z)) $ value
}
0 %>% f