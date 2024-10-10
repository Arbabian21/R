#####################################################
#
# Hypothesis Tests on Proportions
# Via a simulation
#
#####################################################

p0 <- 0.5
n1 <- 1000

zout1 <- rep(0,10000)
for (i in 1:100000)
{
  x1 <- rbinom(n1, 1, p0)
  phat <- mean(x1)
  z1 <- (phat - p0)/sqrt(p0*(1 - p0)/n1 )
  zout1[i] <- z1
}
hist(zout1, freq = FALSE, col = 'lightblue')
lines(seq(-6, 6, by = 0.01),
      dnorm( seq(-6, 6, by = 0.01), 0, 1),
      col = 'red')

# Suppose see x = 562 (successes)
z1a <- (562/1000 - p0)/sqrt(p0*(1 - p0)/n1 )
abline(v = z1a, col = 'orange')
pval1 <- zout1[zout1 > z1a]

# Use built in R function (success, total)
prop.test(562, 1000)