
# GPA 데이터에서 성적이 4.1 이상이면 "A등급" 장학금, 3.8~4.0 사이이면 "B등급"장학금, 3.5~3.7사이이면 "C등급" 장학금을 부여한다.
# 장학금별 장학금액은 아래의 sch 테이블과 같다. join함수를 이용하여 학생별 장학금액을 출력하고, 
# 성별로 "A등급", "B등급", "C등급" 이 각각 몇명인지 출력하시오.

library(dplyr)
library(magrittr)

setwd ("/Users/ys122/source/repos/r")

sch <- data.frame(scholarship = as.factor(c("A","B","C","N/A")), amount = as.character(c(200,100,50,0)))
GPA <- read.csv("GPA.csv", header = T, stringsAsFactors = T)

GPA$scholarship = 
  ifelse(GPA$gpa >= 4.1, "A", 
         ifelse(GPA$gpa >= 3.5, "B",
                ifelse(GPA$gpa >= 3.5, "C", "N/A")))

GPA$scholarship <-GPA$scholarship %>% as.factor

result <- left_join(GPA, sch, by = "scholarship")
result

result %>% 
  group_by(gender, scholarship) %>% 
  summarise(n = n())
