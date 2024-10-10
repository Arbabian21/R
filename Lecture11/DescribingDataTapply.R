#####################################################
#
# Data Description... Tapply function
#
#####################################################

# Read in the HR2.rvv dataset
HR2 <- read.table("../DataSets/HR2.rvv",
                  header = TRUE,
                  sep = "^")
head(HR2)

# Use the tapply function
# tapply (column to analyze, column to group, function)
tapply(HR2$Strength, HR2$Sex, mean)
tapply(HR2$Strength, HR2$Sex, sd)
tapply(HR2$Strength, HR2$Sex, IQR)
tapply(HR2$Strength, HR2$Sex, quantile, c(.2, .5, .8))

# Create a table of results
M1 <- tapply(HR2$Strength, HR2$Sex, mean)
S1 <- tapply(HR2$Strength, HR2$Sex, sd)
IQR1 <- tapply(HR2$Strength, HR2$Sex, IQR)
Qtl1 <- tapply(HR2$Strength, HR2$Sex, quantile, c(.2, .5, .8))

Qtl2 <- cbind(F =Qtl1$F, M = Qtl1$M)

rbind (Mean = M1, Stdev = S1, IQR = IQR1, Qtl2)
