
library(dplyr)
library(magrittr)


f <- function(x) exp(2*x)

(f %>% integrate(log(1/2), log(2))) $ value

