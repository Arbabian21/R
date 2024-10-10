###########################################
#
# Stem and Leaf Plots
#
###########################################

# Read in the CycklerCPK.csv data
cycler1 <- read.csv("./R/DataSets/CyclerCPK.csv", header = TRUE)
head (cycler1)

# Stem and Leaf Plot
stem(cycler1$CPK1)

# The decimal point is 2 digit(s) to the right of the |
#   
# 2 | 9
# 3 | 000111122
# 3 | 
# 4 | 01233444
# 4 | 67
# 5 | 223
# 5 | 5699
# 6 | 0114
# 6 | 5679
# 7 | 22444

# Shape: Trimodal
# Center: about 500
# Spread: 290 - 740
# Gap between 320 - 400