#####################################################
#
# Lists..
#
#####################################################

# Read in the cycler dataframe
cycler1 <- read.csv("../DataSets/CyclerCPK.csv", header = TRUE)
head(cycler1)

# Create some summaries
sum1 <- summary(cycler1)
sum2 <- summary(cycler1[cycler1$Gender == "F",])
sum3 <- summary(cycler1[cycler1$Gender == "M",])

# Create a list
list1 <- list (CyclerData = cycler1,
               CyclerSummary = sum1,
               CyclerSummaryM = sum3,
               CyclerSummaryF = sum2)

# Peel things off the list
list1$CyclerSummary

# View the entire list
list1

# Using bracket notation, need double bracket
list1[[1]]
list1[[2]]
list1[[3]]

# Combine operations from before to peel
list1$CyclerData$CPK1[12]

# Add crazy stuff to the list
z1 <- matrix (c(1, 0.75, 0.75, 1),
              nrow = 2,
              ncol = 2)
y1 <- c("Bob", "Sally", "Wei")

# Put it all on the list
list2 <- list (CyclerData = cycler1,
               CyclerSummary = sum1,
               CyclerSummaryM = sum3,
               CyclerSummaryF = sum2,
               Matrix1 = z1,
               Vector1 = y1)


