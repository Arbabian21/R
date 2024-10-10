#####################################################
#
# The Central Limit Theorem 
# Via simulation
#
#####################################################

# We want to understnad the properties of the sample 
# mean for varying sample sizes.

nSamp <- 1
nSim <- 10000

# Create a container
xmean <- rep(0,nSim)
for(i in 1:nSim)
{
  x1 <- rnorm(nSamp, 5, 1) # Draw from population
  xmean[i] <- mean(x1)
}
hist(xmean, xlim = c(0, 10),
     col = 'lightblue')

# Gamm distrivution


nSamp <- 1
nSim <- 10000

# Create a container
xmean <- rep(0,nSim)
for(i in 1:nSim)
{
  x1 <- rgamma(nSamp, 5, 1) # Draw from population
  xmean[i] <- mean(x1)
}
hist(xmean, xlim = c(0, 15),
     col = 'green')

# Poisson


nSamp <- 1
nSim <- 10000

# Create a container
xmean <- rep(0,nSim)
for(i in 1:nSim)
{
  x1 <- rpois(nSamp, 7) # Draw from population
  xmean[i] <- mean(x1)
}
hist(xmean, xlim = c(0, 20),
     col = 'red')