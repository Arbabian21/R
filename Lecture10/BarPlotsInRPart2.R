###########################################
#
# Barcharts in R... Part 2
#
###########################################

# Read in the data
fish1 <- read.csv("./R/DataSets/MIFish.csv", header = TRUE)
head(fish1)
# head shows first 6 data elements

# Create a table
fishcount1 <- table(fish1$Species)
fishcount1

# Changing Column names
names(fishcount1) <- c("Cat", 
                       "Crappie", 
                       "LMB", 
                       "Other", 
                       "SMB", 
                       "Steel", 
                       "Wall")

# Make the barplot
barplot(fishcount1,
        main = "Distribution of Species",
        ylab = "Count",
        xlab = "Species",
        col = "lightblue")
# col adds color

