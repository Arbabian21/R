#####################################################
#
# Histograms...
#
######################################################

# Read in a dataframe
cycler1 <- read.csv('../DataSets/CyclerCPK.csv', header = TRUE)
head(cycler1)

# First attempt at a picture
plot(cycler1$CPK1, rep(0, length(cycler1$CPK1)))

# Create a histogram and fix it up
hist(cycler1$CPK1,
     xlab = "CKP1",
     main = "Histogram of CPK1")
points(cycler1$CPK1, rep(0, length(cycler1$CPK1)))

temp1 <- hist(cycler1$CPK1)

hist(cycler1$CPK1,
     xlab = "CKP1",
     main = "Histogram of CPK1",
     col = "orange")
