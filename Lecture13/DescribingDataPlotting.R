#####################################################
#
# Data Description... Plotting
#
#####################################################

# Read in the HR2.rvv dataset
HR2 <- read.table("../DataSets/HR2.rvv",
                  header = TRUE,
                  sep = "^")
head(HR2)

# Partition our Plotting window
# c(1,1) means one row and one column (default)
par( mfrow = c(1,1) )
hist(HR2$Strength)

# 2 Histograms next to each other
par( mfrow = c(1,2) )
hist(HR2$Strength)
hist(HR2$Dexterity)

# 2 Histograms on top of each other
par( mfrow = c(2,1) )
hist(HR2$Strength)
hist(HR2$Dexterity)

# 2 Histograms next to each other
par( mfrow = c(1,2) )
hist(HR2$Strength,
     main = "Histogram of Strength",
     xlab = 'Strength',
     col = 'blue')
points(mean(HR2$Strength), 0.2, pch = 2, col =  'red')
points(median(HR2$Strength), 0.2, pch = 3, col =  'yellow')
hist(HR2$Dexterity,
     main = "Histogram of Dexterity",
     xlab = "Dexterity",
     col = 'red')
points(mean(HR2$Dexterity), 0.2, pch = 2, col =  'blue')
points(median(HR2$Dexterity), 0.2, pch = 3, col =  'yellow')

# You need to reset par(mfrow = ) after each use


