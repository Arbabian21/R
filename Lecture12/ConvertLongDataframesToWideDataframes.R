#####################################################
#
# Long dataframes to Wide dataframes
#
#####################################################

# Read in data FA1.txt
FA1 <- read.delim("../DataSets/FA1.txt",
                  header = TRUE,
                  sep = "\t")

# Subset the data by each time
t1 <- FA1[FA1$Sample == 1, c(1, 3) ]
t2 <- FA1[FA1$Sample == 2, c(1, 3) ]
t3 <- FA1[FA1$Sample == 3, c(1, 3) ]

# Changed the name of the column to reflect the sample time
names(t1)[2] <- "FA1"
names(t2)[2] <- "FA2"
names(t3)[2] <- "FA3"

# Merge the dataframes together
FA2 <- merge(t1, t2, by = "Subject")
FA3 <- merge(FA2, t3, by = "Subject")

# This doesn't work, you must do in pairs
FA4 <- merge(t1, t2, t3, by = "Subject")
