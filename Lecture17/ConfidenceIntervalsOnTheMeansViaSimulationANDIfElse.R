#####################################################
#
# Confidence Intervals on the Mean
# Via simulation
#
#####################################################

# Define the population
mu0 <- 10
S0 <- 2
# Sample size
n1 <- 100

plot(NULL, xlim = c(5, 15), ylim = c(0, 100))
correct1 <- 0
for(i in 1:100)
{
  x1 <- rnorm(n1, mu0, S0)
  test1 <- t.test(x1, conf.level = .9 )$conf.int
  if(test1[1] < mu0 & test1[2] > mu0)
  {
    segments(test1[1], i, test1[2], i, col = 'green')
    correct1 <- correct1 +1
  } 
  else
  {
    segments(test1[1], i, test1[2], i, col = 'red')
  }
}
abline(v = mu0, col = 'blue')
correct1/100

