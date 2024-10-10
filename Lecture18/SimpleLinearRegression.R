#####################################################
#
# Regression in R
#
#####################################################

# Sydney Hobart Race Data
Syd1 <- read.table('../DataSets/sydhob.txt',
                   header = TRUE,
                   sep = '\t')
head(Syd1)

# Plot the data (X , Y)
plot(Syd1$Year, Syd1$Time)

# Fit a Regression Line (Y ~ X)
Syd1reg <- lm(Syd1$Time ~ Syd1$Year)
names(Syd1reg)

# worse
Syd1reg$coefficients

# Better
# Create a confidence interval for regression coefficients
confint(Syd1reg)
confint(Syd1reg, level = .99)

# Hypothesis tests on Regression Coefficients
summary(Syd1reg)

# Y intercept 144707.992
# This is the predicted mean amounnt of time to run the race
# in the year 0.
# Nonsense

# X intecept (y = 0)
-Syd1reg$coefficients[1]/Syd1reg$coefficients[2]

##################################################
# Part 2
##################################################

# CCheck normality of the residuals
qqnorm(Syd1reg$residuals)
shapiro.test(Syd1reg$residuals)

# Check to see if the residuals have a pattern
plot(Syd1$Time, Syd1reg$residuals)
abline(0,0)
# Residuals do have a pattern ( linearity may be incorrect)

# Breuch-Pagan test for Constant Variance
Syd1BPreg <- lm(Syd1reg$residuals^2 ~ Syd1$Year + Syd1$Year^2)
summary(Syd1BPreg)









