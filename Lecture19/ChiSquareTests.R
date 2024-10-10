#####################################################
#
# Chi-square test for homogenity (independence)
# 
# Dataset: MIFISh.csv
#####################################################

MIFish1 <- read.csv('../DataSets/MIFish.csv', header = TRUE)
head(MIFish1)

# Contingency Table
table( MIFish1)

# Chi Square test
chisq.test( table(MIFish1) )
