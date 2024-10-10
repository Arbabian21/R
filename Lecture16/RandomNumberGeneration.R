#####################################################
# 
# Random Number Generation... Part 1
#
#####################################################

# No file

# Uniform Distribution
# r unif (# of samples, lower limit, upper limit)
U1 <- runif(100,0,1)

U2 <- runif(20000,-5,10)
hist(U2, col = 'lightblue', xlab = "x", main = "Uniform")

# Normal Distribution
# r norm (# of samples, mean, sd)
N1 <-rnorm(1000, 5, 1)
hist(N1, col = 'pink', xlab = "x", main = "Normal")

# Set a seed (consistent not random)
set.seed(3)
runif(5,0,1)

# Chi-Square
# r chisq ( # of samples, degrees of freedom)
Chi1 <- rchisq(1000, 5)
hist(Chi1, col = 'green', xlab = 'x', main = "Chi-Square")
mean(Chi1)

# Gamma
# r gamma (# of samples, alpha, beta)
Gam1<- rgamma(12000, 10, .5)
hist(Gam1, col = 'green', xlab = 'x', main = "Gamma 10, .1")
mean(Gam1)
# mean = alpha/beta

# T-distribution
# rt(# samples, deg of freedom)
T1 <- rt(15000, 5)
hist(T1, col = 'green', xlab = 'x', main = "T1 df = 5")

# Binomal
# r bimom (# samples, n, p)
# n = number of successes
# p = probability of success
Bin1 <- rbinom(1000, 5, .5)
hist(Bin1, col = 'green', xlab = 'x', main = "Binomial")

# Poisson
# r Pois ( # of samples, rate)
Pois1 <- rpois(1000, 5)
hist(Pois1, col = 'green', xlab = 'x', main = "Poisson")

