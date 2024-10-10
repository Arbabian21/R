#####################################################
#
# Export Data from R
#
#####################################################

# Read in some data to export to other formats.
data1 <- read.csv("../DataSets/Revenue1.csv", header = TRUE)
head(data1)

# Basic text file exporting
write.csv(data1, "./Revenuetest.csv")
write.table(data1, "./Revenuetest.txt",
            sep = "\t",
            row.names = FALSE)

# Install the rio package
install.packages("rio")
install_formats()

library(rio)
data2 <- import("../DataSets/Revenue1.csv")
data3 <- import("./Revenuetest.xlsx")
export(data1, "./Revenuetest.xlsx")