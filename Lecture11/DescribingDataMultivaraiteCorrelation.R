#####################################################
#
# Data Description... Multivariate
#
#####################################################

# Read in the HR2.rvv dataset
HR2 <- read.table("../DataSets/HR2.rvv",
                  header = TRUE,
                  sep = "^")
head(HR2)

# Use the pairs plot
pairs(HR2[, 1:5])

# Use the cor (correlation) function
cor(HR2 [, 1:5])

