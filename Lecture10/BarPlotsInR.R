###########################################
#
# Barcharts in R
#
###########################################

# Read in the data
fish1 <- read.csv("./R/DataSets/MIFish.csv", header = TRUE)
head(fish1)
# head shows first 6 data elements

# Create a table
fishcount1 <- table(fish1$Species)
fishcount1

# Make the barplot
barplot(fishcount1)

# Put a header on the barplot
barplot(fishcount1, main = "Distribution of Species")

# Put a y axis label on the barplot
barplot(fishcount1,
        main = "Distribution of Species",
        ylab = "Count")

# Put a x axis label on the barplot
barplot(fishcount1,
        main = "Distribution of Species",
        ylab = "Count",
        xlab = "Species")

# Rotate to make it horizontal (Will also need to swap x and y)
barplot(fishcount1,
        main = "Distribution of Species",
        xlab = "Count",
        ylab = "Species",
        horiz = TRUE)

# Create a table
LocationCount1 <- table(fish1$Location)
barplot(LocationCount1, 
        main = "Distribution of Fish",
        ylab = "Count",
        xlab = "Location")

