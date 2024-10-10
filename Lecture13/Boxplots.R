#####################################################
#
# Boxplots in R
#
#####################################################

cycler1 <- read.csv('../DataSets/CyclerCPK.csv', header = TRUE)
head(cycler1)

# boxplots
boxplot(cycler1$CPK1,
        ylab = "CPK",
        xlab = "Time 1",
        main = "CPK at Time 1",
        col = "seagreen")
# Shape: Skewed Right
# Center: around 500
# Spread: 290 - 750
# Unusual Features: No outliers

boxplot(cycler1$CPK1,
        xlab = "CPK",
        ylab = "Time 1",
        main = "CPK at Time 1",
        col = "seagreen",
        horizontal = TRUE)

# Side by side Boxplots
boxplot(cycler1$CPK1, cycler1$CPK2, cycler1$CPK3, cycler1$CPK4,
        ylab = "CPK",
        names = c("Time 1", "Time 2", "Time 3", "Time 4"),
        col = c("green", "blue", "red", "purple"),
        main = " Boxplot of CPK across Time")

# Turn wide to long
cpk1 <- cycler1[, c(1, 2, 3, 4, 5)]
cpk2 <- cycler1[, c(1, 2, 3, 4, 6)]
cpk3 <- cycler1[, c(1, 2, 3, 4, 7)]
cpk4 <- cycler1[, c(1, 2, 3, 4, 8)]

# Change the names on CPK
names(cpk1)[5] <- "CPK"
names(cpk2)[5] <- "CPK"
names(cpk3)[5] <- "CPK"
names(cpk4)[5] <- "CPK"

# Stack up the datasets
cpkstack <- rbind(cpk1, cpk2, cpk3, cpk4)

# Create a side by side boxplot against treatment
boxplot(cpkstack$CPK ~ cpkstack$TRT,
        xlab = "Treatment",
        ylab = "CPK",
        main = "CPK vs Treatment",
        col = c("pink", "red", "purple", "blue"))

boxplot(cpkstack$CPK ~ cpkstack$TRT*cpkstack$Gender,
        xlab = "Treatment",
        ylab = "CPK",
        main = "CPK vs Treatment",
        col = c("pink", "red", "purple", "blue"))


