#####################################################
#
# Wide to Long
#
#####################################################

# Read in our data
cycler <- read.csv("../DataSets/CyclerCPK.csv", header = TRUE)

# Subset for time 1
cpk1 <- cycler[, c(1, 2, 3, 4, 5)]
# Subset for time 1
cpk2 <- cycler[, c(1, 2, 3, 4, 6)]
# Subset for time 1
cpk3 <- cycler[, c(1, 2, 3, 4, 7)]
# Subset for time 1
cpk4 <- cycler[, c(1, 2, 3, 4, 8)]

# Change the column names for cpk
names(cpk1)[5] <- "CPK"
names(cpk2)[5] <- "CPK"
names(cpk3)[5] <- "CPK"
names(cpk4)[5] <- "CPK"

n1 <- nrow(cycler)

cpk1a <- cbind(cpk1, trial = rep(1, n1))
cpk2a <- cbind(cpk2, trial = rep(2, n1))
cpk3a <- cbind(cpk3, trial = rep(3, n1))
cpk4a <- cbind(cpk4, trial = rep(4, n1))

# Stack them on top of each other
cpkstack <- rbind(cpk1a, cpk2a, cpk3a, cpk4a)