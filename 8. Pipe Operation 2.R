
# iris 데이터에서 각 종별로 Sepal.Length 가 5.5 보다 큰 관측치 갯수를 출력하는 코드를 작성하라.

library(dplyr)
library(magrittr)

iris <- iris

iris %>% 
  group_by(Species) %>% 
  filter(Sepal.Length > 5.5) %>% 
  summarise(num = n())
  