
# d라는 함수는 3차원 좌표평면의 어느 점에서 원점까지 거리를 계산하는 함수이다.
# d라는 함수를 구현하고, 원점에서 부터 점(3,4,5)의 거리를 구하라. (HW)

# 이름, 고향, 중간, 기말을 입력받아 기말/중간 평균 점수가 60점 이상이면 Pass,
# 이하이면 Fail을 반환하는 함수를 만들어라. (HW)

# 1
d <- function (x, y, z) sqrt(x^2 + y^2 + z^2)
d(3,4,5)

#2
grade <- function(name, hometown, middle, final) {
  result <- c(middle, final)
  ifelse(mean(result) >= 60, "Pass", "Fail")
}  
grade(신윤수,인천,50,70)

rm()
gc()
