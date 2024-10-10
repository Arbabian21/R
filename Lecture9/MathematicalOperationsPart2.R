############################################
#
# Mathematical Operations Part 2
#
############################################

# Vectors
a1 <- c(1, 3, 4, 2, 5)
b1 <- c(2, 1, 3, 5, 4)

## Matrices
m1 <- matrix(c(1, 2, 3, 4),
             nrow = 2,
             ncol = 2
)
m2 <- matrix(c(4, 3, 2, 1),
             nrow = 2,
             ncol = 2)
# Matrix multiplication
a1 %*% b1

m1 %*% m2

# Transpose a Matrix
## row based
m1
t(m1)

# Matrix Inverse
m1
solve(m1)

m1 %*% solve(m1)