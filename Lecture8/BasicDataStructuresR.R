######################################
#
# Basic Data Structures 
#
#######################################

# Variables

a1 <- 5
b1 <- 10


# Vectors
c1 <- c(5.3, 2.2, 1.6)

# Retrieving values
c1[1]
## returns 5.3
c1[3]
## returns 1.6

d1 <- c(2.3, 1.9, 4.3)


# Text Vectors
e1 <- c('abdul', 'bob', 'sally', 'karen', 'wei')

# Matrix
f1 <- matrix( c( 0.1, 0.2, 0.3, 0.4 ),
  nrow = 2,
  ncol = 2 )

# The number of elements in the matrix must match the number in the vector.
# nrow *ncol = vector lenght

# Retrieve values from a matrix
#matrix [row, column]
f1[2, 2]

# Matrices do not like text

# Arrays
g1 <- array (c(.1, .2, .3, .4, .5, .6, .9, 1.0, 1.1, 1.2),
             dim = c(2,3,2))
# dim mean 2 row, 3 column, 2 levels

# Retrieve values
g1 [2,1,1]
g1 [2,2,2]

