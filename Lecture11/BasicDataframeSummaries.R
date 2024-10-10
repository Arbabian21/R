#####################################################
#
# Basic Summaries in R
#
#####################################################

# Read in the cycler dataframe
cycler1 <- read.csv("../DataSets/CyclerCPK.csv", header = TRUE)
head(cycler1)

# Dimensions, works on dataframes but not on matrices or vectors
# Produces rows and columns
dim(cycler1)

# Number of rows
nrow(cycler1)

# Number of columns
ncol(cycler1)

# Summaries
summary(cycler1)

