
# 2. (10점) 흰 공 3개, 검은 공 4개가 들어있는 주머니가 있다. 이 주머니에서 
# 임의로 네 개의 공을 동시에 꺼낼 때, 흰 공 2개와 검은 공 2개가 나올 확률을
# R 코딩으로 구하시오.

# 조합 공식
C <- function (n, r) factorial(n) / (factorial(n-r) * factorial(r))

# 흰 공이 2개 나오는 경우의 수
take.w <- C(3, 2)

# 검은 공이 2개 나오는 경우의 수
take.b <- C(4, 2)

# 공을 4개 뽑는 경우의 수
take.all <- C(7, 4)

(take.w * take.b) / take.all