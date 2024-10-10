###########################################
#
# Barcharts in R... Part 3
#
###########################################

# Read in the data
fish1 <- read.csv("./R/DataSets/MIFish.csv", header = TRUE)
head(fish1)
# head shows first 6 data elements

# Create a table
fishcount1 <- table(fish1$Species)
fishcount1

# Make the table
SpecLocTable <- table(fish1$Species, fish1$Location)

pdf("./R/Lecture10/Bar2.pdf")
barplot(SpecLocTable,
        main = "Distribution of Fish by Location",
        xlab = "Location",
        ylab = "Counts",
        legend = row.names(SpecLocTable),
        col = c("black", "red", "blue", "green", "orange", "yellow", "pink"))
dev.off()

pdf("./R/Lecture10/Bar1.pdf")
barplot(SpecLocTable,
        main = "Distribution of Fish by Location",
        xlab = "Location",
        ylab = "Counts",
        beside = TRUE,
        legend = row.names(SpecLocTable))
dev.off()        
