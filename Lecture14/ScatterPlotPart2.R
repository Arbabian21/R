#####################################################
#
# Scatter Plots Part 2
# Points and More Points!
#
#####################################################
baby1 <- read.csv("../DataSets/Babies.csv", header = TRUE)
head(baby1)
 
# Create a Scatterplot of x1 vs x2
plot(baby1$x1, baby1$x2)
 
# Create a Scatterplot of x1 vs x2
pdf('./Baby3.pdf')
baby3 <- baby1[baby1$Age == 3, ]
plot(baby3$x1, baby3$x2,
     xlab = 'x1',
     ylab = 'x2',
     main = 'x1 vs x2',
     col = 'blue',
     xlim = c(min(baby1$x1), max(baby1$x1)), # changing var of axis to accomodate points
     ylim = c(min(baby1$x2), max(baby1$x2))) # changing var of axis to accomodate points
baby12 <- baby1[baby1$Age == 12,]

# points add points on a scatter plot
points(baby12$x1, baby12$x2,
       col = 'red')

baby12 <- baby1[baby1$Age == 12,]
points(baby12$x1, baby12$x2,
       col = 'red')


baby24 <- baby1[baby1$Age == 24,]
points(baby24$x1, baby12$x2,
       col = 'darkgreen')

# Creating a legend (coordinates of graph)
legend(0.25, 400,
       c('3month', '12month', '24month'),
       col = c('blue', 'red', 'darkgreen'),
       pch = c(1,1,1))
dev.off()

# Points and more Points Again
# Easier method
# Create a scatterplot
plot(baby1$x1, baby1$x2,
     xlab = 'x1',
     ylab = 'x2',
     col = baby1$Age,
     main = 'x2 vs x1')
legend (0.24, 400, c('3month', '12month', '24month'),
        col = c(3, 12, 24),
        pch = c(1,1,1))

# Add more Lines Again
plot(baby1$x1, baby1$x2,
     xlab = 'x1',
     ylab = 'x2',
     col = baby1$Age,
     main = 'x2 vs x1')
baby12 <- baby1[baby1$Age == 12,]
baby24 <- baby1[baby1$Age == 24,]
baby3 <- baby1[baby1$Age == 3,]
abline(lm(baby3$x2 ~ baby3$x1), col = 3, lty = 3)
abline(lm(baby12$x2 ~ baby12$x1), col = 12, lty = 3)
abline(lm(baby24$x2 ~ baby24$x1), col = 24, lty = 3)
legend (0.24, 400, c('3month', '12month', '24month'),
        col = c(3, 12, 24),
        pch = c(1,1,1))
