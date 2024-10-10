#####################################################
#
# Interpreting Histograms
#
#####################################################

# Read in the testing2.csv data
score1 <- read.csv("../DataSets/Testing2.csv", header = TRUE)
head(score1)

# Grade 6
hist(score1$Grade6,
     main = 'Grade 6',
     xlab = 'score')

# Four things to worry about.
# 1 shape (symmetric, skewed, bimodal)
# 2 center
# 3 spread
# 4 Unusual Features, gaps, extreme values

# For Grade 6
# Symmetric
# Center about 1/2
# Spread from 0 to 1. Range = 1
# No unusual features

# Grade 8
hist(score1$Grade8,
     main = 'Grade 8',
     xlab = 'score')

# For Grade 8
# Skewed Right
# Center about .19
# Spread from 0 to 1. Range = 1
# Gap betweeen .6 and .7 and extreme values near 1.

# Grade 8
hist(score1$Grade11,
     main = 'Grade 11',
     xlab = 'score')

# For Grade 11
# Bimodal
# Center about .37
# Spread from 0 to 1. Range = 1
# Middle Values are less likely
