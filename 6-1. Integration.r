
# 3. 정적분 구하기

library(dplyr)
library(magrittr)

# 해당 함수
f <- function (x) (log(x) - 1) / x^2

# 함수 f(x)를 범위 e ~ e^2 를 적분
(f %>% integrate(exp(1), exp(2))) $ value