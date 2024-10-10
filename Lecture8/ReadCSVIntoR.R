##############################################
#
# Read in data
#
##############################################
 
# Read CSV ..... CherryTree.csv 
CherryTree <- read.csv(file.choose(), header = TRUE, )
head(CherryTree)

# Using Path approach
CherryTree2 <- read.csv("./R/DataSets/CherryTree.csv", 
                        header = TRUE)

# Using working Directory
setwd("./R/DataSets/")
CherryTree3 <- read.csv("CherryTree.csv", header = TRUE)
