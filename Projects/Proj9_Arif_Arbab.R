V <- c(120.07, 87.43, 194.72, 101.88, 74.64, 52.14,
       42.19, 42.89, 112.29, 131.27)
CX <- c(114.48, 100.19, 104.61, 121.73, 85.03, 
        110.31, 151.75, 75.63, 162.72, 32.03)
CY <- c(50.54, 26.74, 66.58, 25.68, 63.81, 5.64,
        7.33, 37.69, 1.79, 53.94)
# Create a data frame with column headings
SchlattmanAndDirnagl <- data.frame(Vehicle = V, 'Compound X' = CX, 'Compound Y' = CY)

# Question 1. Using the data from problem 3.7 Download problem 3.7in the textbook 
# perform an ANOVA analysis of infarction across vehicle and compound. (30 pts)

# Wide to long
# Subset for Vehicle
Vehicle <- SchlattmanAndDirnagl[, 1]
# Subset for Compound X
CompoundX <- SchlattmanAndDirnagl[, 2]
# Subset for Compound Y
CompoundY <- SchlattmanAndDirnagl[, 3]

n1 <- nrow(SchlattmanAndDirnagl)

Vehiclea <- data.frame(Infarction = V, TRT = rep('Vehicle', n1))
CompoundXa <- data.frame(Infarction = CX, TRT = rep('Compound X', n1))
CompoundYa <- data.frame(Infarction = CY, TRT = rep('Compound Y', n1))

# Stack them on top of each other
SchlattmanAndDirnaglStack <- rbind(Vehiclea, CompoundXa, CompoundYa)
# Change the column names to Infarction

# ANOVA using the aov funciton
SchlattmanAndDirnagl.aov <- aov(Infarction ~ TRT, data = SchlattmanAndDirnaglStack)
summary(SchlattmanAndDirnagl.aov)
# P = .000354
# F = 10.82
# The ANOVA output indicates significant differences among the three treatments

# Question 2.  Using the data from problem 3.7 Download problem 3.7conduct a 
#Tukey's HSD multiple comparison procedure for infarction across vehicle and 
#compound to determine where differences exist. (20 pts)

# Tukeys Honestly Significant Difference procedure
SchlattmanAndDirnagl.tukey <- TukeyHSD(SchlattmanAndDirnagl.aov, 'TRT')
plot(SchlattmanAndDirnagl.tukey)

# The main difference is when using one of the commpounds with the vehicle. When
# using both compounds, Infarction is not effective. Compound x with Vehicle is 
# more effective. Compound Y with Vehicle is most effective.

# Question 3. Draw 1000 samples from the following distributions and create histograms 
# for each.  Be sure to comment about each histogram.  Remember all histograms 
# should have four items addressed.
# (a) X ∼ N (0, 1) using rnorm function.  (15 pts)
set.seed(123)  # for reproducibility
X_norm <- rnorm(1000, mean = 0, sd = 1)
hist(X_norm, main = "Histogram of N(0, 1)", xlab = "Values", breaks = 30)
# shape: normal
# center: about 0
# spread: about -3 - 3.5
# unusual feature: none really

# (b) X ∼ Gamma(2, 3) using the rgamma function. (15 pts)
X_gamma <- rgamma(1000, shape = 2, rate = 3)
hist(X_gamma, main = "Histogram of Gamma(2, 3)", xlab = "Values", breaks = 30)
# shape: skewed left
# center: about .5
# spread: about 0 - 3.5
# unusual feature: gap between 2.25 - 2.75

# (c) X+Y where X ∼ N(5,2) and Y ∼ χ2(15).  (15 pts) 
X_norm2 <- rnorm(1000, mean = 5, sd = 2)
Y_chisq <- rchisq(1000, df = 15)
XY_sum <- X_norm2 + Y_chisq
hist(XY_sum, main = "Histogram of N(5, 2) + χ²(15)", xlab = "Values", breaks = 30)
# shape: normal, skewed leftish
# center: about 19
# spread: about 5 - 50
# unusual feature: none really

# (d) X ∼ Binomial(1, 0.3).  (15 pts) 
X_binom <- rbinom(1000, size = 1, prob = 0.3)
hist(X_binom, main = "Histogram of Binomial(1, 0.3)", xlab = "Values", breaks = 30)
# shape: bimodal
# center: I couldn't even tell you
# spread: about 0 - 1
# unusual feature: gap between .05 - .95

# (e) Calculate a mean of a vector X = (X1, X2, ..., Xn ) 1000 times, where 
# Xi ~ Binomial(1, 0.4) for n = 2, 5, 10, 20, 50, 100 and create a histogram of 
# the means. Each n should be dealt with separately. For example, you draw 1000 
# samples of size n = 2 (you may use for() loop for that). Every time a sample 
# is drawn, you calculate its mean. Once you will end up with n means, you create 
# a histogram of those means. Then repeat for n = 5, 10, etc.  There should be 6 
# separate histograms with comments for each.  Restrict the x-axis to stay at 
# 0 to 1 for all plots.  Comment on the differences between plots as n increases.  
# (35 pts).
sample_sizes <- c(2, 5, 10, 20, 50, 100)
par(mfrow = c(2, 3))  # setting the plotting area to display multiple plots

for (n in sample_sizes) {
  means <- replicate(1000, mean(rbinom(n, 1, 0.4)))
  hist(means, main = paste("Means of n =", n), xlab = "Mean", breaks = 30, xlim = c(0, 1))
}

par(mfrow = c(1, 1))  # reset to default plotting area

# The histograms just go from multimodal with large gaps in betweeen to more and more
# of a normal distribution as n grows