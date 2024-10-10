#####################################################
#
# Functions in R
#
#####################################################

# Basic format for a function in R
# FunctionName <- function(Inputs)
# {
# Do stuff to Inputs to generate Outputs
# return (Outputs)
# }

Cubic1 <- function(x)
{
  Output1 <- 3*x^3 + 2*x^2 + 1*x + 7
  return(Output1)
}
Cubic1(3)

C1 <- Cubic1(seq(-5, 5, by = 0.2))
plot(seq(-5, 5, by = 0.2), C1, type = 'l')


Cubic1 <- function(x, a, b, c, d)
{
  Output1 <- a*x^3 + b*x^2 + c*x + d
  return(Output1)
}
Cubic1(3, a = 1, b = 1, c = 1, d = 1)

# Part 2

fun2 <- function(x)
{
  if(x < 0 | x > 1)
    res1 <- 0
  else
  res1 <- x^2*(1-x)^4
  
  return(res1)
}
fun2(5)
fun2(-1)
fun2(.5)
# Not work
# x1 <- seq(-1, 2, by = .01)
# fun2(x1)

fun3 <- function(x)
{
  n1 <- length(x) # Determine length of x
  res1 <- rep(0, n1) # Create a container to hold results
  for (i in 1:n1) # Loop through all x's
   {
    if(x[i] < 0 | x[i] > 1) # logic to determine bounds
      res1[i] <- 0 # if we are out of bounds
    else
      res1[i] <- x[i]^2*(1-x[i])^4 # calc the function
    }
  return(res1) # return the function
}
y1 <- fun3(x1)
plot(x1, y1, type = 'l')