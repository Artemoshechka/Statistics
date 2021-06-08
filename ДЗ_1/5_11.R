u <- c(6,11)
n <- 4
p <- 2
X <- matrix(c(3,6,5,10,10,12,14,9), nrow=n, ncol=p)

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