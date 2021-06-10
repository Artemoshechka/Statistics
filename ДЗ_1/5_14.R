u <- c(48,49,50,51)
n <- 20
p <- 4
X <- matrix(c(47.8,46.4,46.3,45.1,47.6,52.5,51.2,49.8,48.1,45,51.2,48.5,52.1,48.2,49.6,50.7,47.2,53.3,46.2,46.3,48.8,47.3,46.8,45.3,48.5,53.2,53,50,50.8,47,51.4,49.2,52.8,48.9,50.4,51.7,47.7,54.6,47.5,47.6,49,47.7,47.8,46.1,48.9,53.3,54.3,50.3,52.3,47.3,51.6,53.0,53.7,49.3,51.2,52.7,48.4,55.1,48.1,51.3,49.7,48.4,48.5,47.2,49.3,53.7,54.5,52.7,54.4,48.3,51.9,55.5,55.0,49.8,51.8,53.3,49.5,55.3,48.4,51.8),nrow=n,ncol=p)

#x mean matrix
xmean <- colMeans(X)
print(xmean)

#S matrix
S <- cov(X)
print(S)

#S_inverted matrix
S_inverted <- solve(S)
print(S_inverted)

#Final result
T2 <- n * (xmean - u) %*% S_inverted %*% (xmean - u)
print(T2)

pvalue <- pchisq(q = T2, df = p, lower.tail = FALSE)
print(pvalue)

#p_value = 0.7738294, so we accept H0