#####################################################
#
# Working with Text in R
# Dataset: MIFish.csv
#####################################################

MIFish1 <- read.csv('../DataSets/MIFish.csv', header = TRUE)
head(MIFish1)

# Create a table that summarizes the frequency
table(MIFish1)

# Pull the first letter from a string(text)
substr(MIFish1$Location, start = 1, stop = 1)

MIFish1$Location[1:5]
substr(MIFish1$Location[1:5], start = 2, stop = 3)

# Search through a dataset for a specific string
Bass1 <- grep('Bass', MIFish1$Species)
MIFish1[Bass1,]

# Find where a substring begins
# -1 means not there
regexpr('Bass', MIFish1$Species)
MIFish1$Species[1:10]

Bass2 <- MIFish1[Bass1,]
regexpr('Bass', Bass2$Species)

# Makes the text all in lowercase
tolower(Bass2$Species)

# Makes the text all uppercase
toupper(Bass2$Species)

# Concatenating strings with an automatic seperator of space " "
paste("The", "Dog", "ran", "down", "the", "street.")

paste("A", MIFish1$Species, "was caught at location", MIFish1$Location)

# no space seperator
paste("A", MIFish1$Species, "was caught at location", MIFish1$Location,
      sep = "")
