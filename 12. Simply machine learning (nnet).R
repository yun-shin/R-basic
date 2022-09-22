
# 숙제 1) XOR(exclusive OR) 문제에 대한 인공신경망을 만들고 예측하라.

library(dplyr)
library(magrittr)
library(nnet)

xor <- data.frame(x = c(0,0,1,1),y=c(0,1,0,1))
xor$z <- xor %$% ifelse(x==y,0,1) %>% as.factor

test <- data.frame(x = c(0, 1, 0, 1, 0),y=c(0, 0, 1, 1, 0))

nn1 <- nnet(z ~., data=xor, size=2, decay = 5e-04)

xor.prediction <- data.frame(test %$% ifelse(x==y,0,1),predict(nn1, test))
View(xor.prediction)


# (숙제 2) rpf.csv를 로딩하시오. 일주일 동안 평균 4.9시간 공부하고, 출석점수가 82점일 때 pass, fail을 예측하라.

setwd ("/Users/ys122/source/repos/r")
rpf <- read.csv("rpf.csv", header = T, stringsAsFactors = T)
rpf <- rpf[, -1]
result <- data.frame(hours = 4.9, absence = 82)

nn2 <- nnet(outcomes~., data = rpf, size=50, decay = 5e-04)

rpf.prediction <- predict(nn2, result, type="class")
rpf.prediction
