#####################################################
#
# Working with dates in R
# Dataset: RBOBWTI.csv
#####################################################

# Read in the data
RBOB1 <- read.csv('../DataSets/RBOBWTI.csv', header = TRUE)
head(RBOB1)

# Test: How to determine if R sees it as a date
RBOB1$Date[1] - RBOB1$Date[200]

RBOB.Dates <- as.Date(RBOB1$Date, format = '%b%d,%Y')

# How to determine the format code
# %d day of the month
# %b abbreviation for the month
# %Y year in 4 digits
# 
# %y year in 2 digits
# %m month in a number
# %B month full name

# Test
RBOB.Dates[200] - RBOB.Dates[1]
# Confrimed

# What month is the data
months(RBOB.Dates[210:230])

# What day of the week is it?
weekdays(RBOB.Dates[210:230])

# Max Date
max(RBOB.Dates)

# Create a sequence of dates
# Base date
bd1 <- max(RBOB.Dates)

# start data, num of time periods, time period
seq(bd1, length = 7, by = "weeks")

# Summary dates
meanDate <- mean(RBOB.Dates)
min(RBOB.Dates)
IQR(RBOB.Dates)
