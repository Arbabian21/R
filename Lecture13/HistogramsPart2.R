#####################################################
#
# Histograms Part 2 (Overlaying Histograms)
#
#####################################################

# Read in another datagrame
score1 <- read.csv("../DataSets/Testing1.csv", header = TRUE)
head(score1)

hist(score1$Grade5)
hist(score1$Grade7)
hist(score1$Grade10)

# Overlay the histograms
hist(score1$Grade5,
     xlim = c(0,1),
     col = 'blue',
     xlab = 'Score',
     main = 'Score Across Grades')
hist(score1$Grade7, add = TRUE, col = 'red')
hist(score1$Grade10, add = TRUE, col = 'green')
