############################################
#
# Mathematical Operations part 1
#
############################################

# Vectors
a1 <- c(1, 3, 4, 2, 5)
b1 <- c(2, 1, 3, 5, 4)

# Simple addition

## adds 5 to each value in the vector
a1 + 5
b1 + 7

## adds values element wise 
a1 + b1

# Simple Multiplication
a1*5
b1*5

## Matrices
m1 <- matrix(c(1, 2, 3, 4),
             nrow = 2,
             ncol = 2
             )
m2 <- matrix(c(4, 3, 2, 1),
             nrow = 2,
             ncol = 2)
m1 + 5
m2 + 5

m1+m2

m1*m2

## Exponenetiation
a1^3
m1^2

m1 -3
m2/3