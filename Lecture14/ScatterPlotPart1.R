#####################################################
#
# Scatter Plots in R
#
#####################################################

# Read in the data
race1 <- read.table("../DataSets/sydhob.txt",
                    header = TRUE,
                    sep ="\t")
head(race1)

# Create a scatterplot of time by year
plot(race1$Year, race1$Time,
     xlab = "Year",
     ylab = "Time",
     main = "Hobart Sydney Race\nRace Time vs. Year",
     col = 'blue')

# Adding lines
# Adding a line between items
plot(race1$Year, race1$Time,
     xlab = "Year",
     ylab = "Time",
     main = "Hobart Sydney Race\n Race Time vs. Year",
     col = 'blue',
     type = 'l', # Line plot
     lty = 1, # Line Type
     lwd = 2 # Line width
     )
# Adding a line over the graph
abline(lm(race1$Time ~ race1$Year),
       lty = 3,
       col = 'red',
       lwd = 1.5)

# More Plotting options
# Adding points and lines between points
plot(race1$Year, race1$Time,
     xlab = "Year",
     ylab = "Time",
     main = "Hobart Sydney Race\nRace Time vs. Year",
     col = 'blue',
     type = 'b',
     pch = 7 # pch = point character
     # https://www.statmethods.net/advgraphs/parameters.html
     )

