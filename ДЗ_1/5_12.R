u <- c(30,25,40,25,30)
n <- 11
p <- 5
X <- matrix(c(51,27,37,42,27,43,41,38,36,26,29,36,20,22,36,18,32,22,21,23,31,20,50,26,41,32,33,43,36,31,27,31,25,35,17,37,34,14,35,25,20,25,32,26,42,27,30,27,29,40,38,16,28,36,25),nrow=n,ncol=p)

#x mean matrix
xmean <- colMeans(X)
print(xbar)

#S matrix
S <- cov(X)
print(S)

#S_inverted matrix
S_inverted <- solve(S)
print(S_inverted)

#Final result
T2 <- n * (xmean - u) %*% S_inverted %*% (xmean - u)
print(T2)