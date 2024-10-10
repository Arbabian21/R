#######################################
#
# Data Description... Apply function
#
#######################################

# Read in the HR2.rvv dataset
HR2 <- read.table("../DataSets/HR2.rvv", 
                  header = TRUE,
                  sep = "^")
head(HR2)

# Learn about the apply function
# for the second argument
# 1 = rows
# 2 = columns
apply(HR2[, 1:5], 2, mean)
apply(HR2[, 1:5], 2, sd)
apply(HR2[, 1:5], 2, IQR)
apply(HR2[, 1:5], 2, quantile, c(0.2, 0.5, 0.8))

