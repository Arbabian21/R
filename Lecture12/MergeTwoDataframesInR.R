#####################################################
#
# Merge two datasets
#
#####################################################

# Read in the two files
rev1 <- read.csv("../DataSets/Revenue1.csv", header = TRUE)
rev2 <- read.csv("../DataSets/Revenue2.csv", header = TRUE)

rev3 <- merge(rev1, rev2, by = "ID")
rev4 <- merge(rev2, rev1, by = "ID")