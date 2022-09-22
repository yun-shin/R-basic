
iris <- iris

save(iris, file = "iris.RData")       # RData로 저장. 객체로 저장
load("iris.RData")


write.csv(iris, "iris.csv", row.names = F)
iris <- read.csv("iris.csv", header = F)