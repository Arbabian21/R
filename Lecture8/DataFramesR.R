###########################################
#
# Data frames
#
###########################################

# Create a data frame
a1 <- c('abdul', 'bob', 'kelly', 'sally', 'wei')
b1 <- c(172, 161, 162, 159, 169)
c1 <- c(81, 70, 72, 65, 77)

# Combining into a data frame
data1 <- data.frame(a1, b1, c1)

# Create a data frame with column headings
data2 <- data.frame(name = a1, height = b1, weight = c1)

# Subset the data based on names
# $ means go grab a column out of the dataset
data2$name
data2[, 1]


# Subset the data based on bracket notation
# Leaving something blank gets you all the information
data2[3, ]

# Names in data frames
names(data2)

# Change the names in a data frame using the name() function
names(data2) <- c("Name", "Height", "Weight")
