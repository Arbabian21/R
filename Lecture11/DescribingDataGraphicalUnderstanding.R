#####################################################
#
# Data Description... Understanding via Graphs
#
#####################################################

# Read in the HR2.rvv dataset
HR2 <- read.table("../DataSets/HR2.rvv",
                  header = TRUE,
                  sep = "^")
head(HR2)

# Understanding the mean
mean1 <- mean (HR2$Strength)
# rep repeats 0 
# nrow is the number of rows
plot(HR2$Strength, rep(0, nrow(HR2)))
# pch = shape type
points(mean1, -0.1, col = "red", pch = 2)
median1 <- median(HR2$Strength)
# lty is line type
# v is verticle line
abline(v = median1, col = "blue", lty = 2)
qtl1 <- quantile(HR2$Strength, c(0, .25, .5, .75, 1))

abline(v = qtl1[1], col = "purple", lty = 3)
abline(v = qtl1[2], col = "purple", lty = 3)
abline(v = qtl1[4], col = "purple", lty = 3)
abline(v = qtl1[5], col = "purple", lty = 3)


