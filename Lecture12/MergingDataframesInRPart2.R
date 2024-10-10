#####################################################
#
# Merge two datasets
#              with different column names
#####################################################

# Read in the two files
data1 <- read.csv("../DataSets/StoreInfo.csv", header = TRUE)
data2 <- read.csv("../DataSets/StoreIncome.csv", header = TRUE)

data3 <- merge(x = data1, y = data2,
               by.x = "StoreID",
               by.y = "StoreNo")
