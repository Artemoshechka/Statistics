n <- 5
p <- 5
X <- matrix(c(30,21,21,14,22,13,22,5,29,13,18,17,12,7,16,14,23,24,23,8), ncol = n, nrow = p)
R <- cor(X)
print(R)
u <- abs(det(R))
print(u)
u_hatch <- -(n - 1 - 1 / 6 * (2 * p + 5)) * log(u)
print(u_hatch)
crit_value <- qchisq(p = 0.05, df = 0.5 * p * (p - 1), lower.tail = FALSE)
print(crit_value)

#H0 rejected