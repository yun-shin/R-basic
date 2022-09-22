
# 4. (10점) 다음 두개 조건을 모두 만족시키는 음이 아닌 정수 a, b, c, d 의 모든 
# 순서쌍 의 개수를 R 코딩으로 구하시오.
# i) a + b + c + d = 9
# ii) d <= 4, c >= d

# 중복 순열 공식
H <- function(n, r) factorial(r + n - 1) / (factorial(r) * factorial(n - 1))

# d = 4인 경우
# c >= 4 이 성립함으로 다음 공식이 성립함.
ordinal <- data.frame(d.4 = H(3, 1)) 

# d = 3인 경우
# c >= 3 이 성립함으로 다음 공식이 성립함.
ordinal$d.3 <- H(3, 3) 

# d = 2인 경우
# c >= 2 이 성립함으로 다음 공식이 성립함
ordinal$d.2 <- H(3, 5)

# d = 1인 경우
# c >= 1 이 성립함으로 다음 공식이 성립함
ordinal$d.1 <- H(3, 7)

# d = 0인 경우
# c >= 0 이 성립함으로 다음 공식이 성립함
ordinal$d.0 <- H(3, 9)

View(ordinal)
sum(ordinal)