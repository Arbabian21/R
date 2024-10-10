#####################################################
#
# Subsetting Data in R
# 
#####################################################

# Read in some data
cycler <- read.csv("../DataSets/CyclerCPK.csv", header = TRUE)
head(cycler)

# Subset by rows
# Remember dataframe[row, column]

# Subset by Gender
cpkM <- cycler[cycler$Gender == "M", ]
cpkF <- cycler[cycler$Gender == "F", ]

# Subset by TRT
cycler[cycler$TRT == "H", ]
cycler[cycler$TRT == "H" & cycler$Gender == "F", ]
cycler[cycler$TRT == "L" | cycler$TRT == "M", ]

# Subset by using %in%
cycler[cycler$TRT %in% c("H", "L"), ]

# Use negative logic
cycler[cycler$TRT != "H",]

# Subset on inequalities
cycler[cycler$Age < 30, ]
cycler[cycler$Age <= 30, ]
cycler[cycler$Age > 25, ]
cycler[cycler$Age >= 30, ]