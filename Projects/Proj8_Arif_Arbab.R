# Arbab Arif
# Project 8
# 4/11/24
# Dr. Ya Su
# Stat 321

BaltCrime <- read.csv("../DataSets/BPD_Part_1_Victim_Based_Crime_Data.csv",
                      header = TRUE)

# 1. Create Barplot of SHOOTINGS by month.  Be sure to clearly label everything and comment on which month has the most shootings and which month has the least shootings.  (20 pts)
# July has the most shootings; February has the least shootings
BaltCrime$CrimeDate <- as.Date(BaltCrime$CrimeDate, format = '%m/%d/%Y')

MonthlyBaltCrime <- BaltCrime
MonthlyBaltCrime$CrimeDate <- format(MonthlyBaltCrime$CrimeDate, "%m")

Shootings <- MonthlyBaltCrime[MonthlyBaltCrime$Description == 'SHOOTING',]

ShootingCount <- table(Shootings$CrimeDate)
barplot(ShootingCount, 
        main = "Shootings by Month",
        ylab = 'Count',
        xlab = "Month",
        col = 'red')


# 2. Create a Barplot of the Top 10 neighborhoods for LARCENY.  Sort the Barplot from greatest to least. (20 pts)
Larceny <- BaltCrime[BaltCrime$Description == 'LARCENY',]
LarcenyCount <- table(Larceny$Neighborhood)
TopLarceny <- sort(LarcenyCount, decreasing=TRUE)[1:10]
barplot(TopLarceny, 
        main = "Larceny by Neighborhood",
        ylab = 'Count',
        xlab = "Neighborhood",
        col = 'darkred')

# 3. Create a Barplot of AUTO THEFT versus hour of the day.  Which hours have the most and least auto thefts? (20 pts)
# Hour 23 has the most; hour 5 has the least
AutoTheft <- BaltCrime[BaltCrime$Description == 'AUTO THEFT',]
AutoTheft$CrimeTime <- substr(AutoTheft$CrimeTime, 1,2)
AutoTheftCount <- table(AutoTheft$CrimeTime)
barplot(AutoTheftCount,
        main = 'Auto Theft by Hour',
        xlab = 'Hour',
        ylab = 'Count',
        col = "maroon")

# 4. Create a Barplot of the mean AUTO THEFT by day of the Week.  Which days of the week have the most and least mean auto thefts? (20 pts)
# Thursdays Had the least, Fridays had the most
AutoTheft$CrimeDate <- weekdays(AutoTheft$CrimeDate)
AutoTheftCount <- table(AutoTheft$CrimeDate)
barplot(AutoTheftCount,
        main = 'Auto Theft by Day',
        xlab = 'Day',
        ylab = 'Count',
        col = "lavender")

# 5. Create a timeplot (line connected scatterplot) of the number of auto thefts by year.  Does there seem to be a trend?  If so, run a regression 
# and see if the trend is statistically significant.  If it is significant interpret the slope parameter in terms of the problem.  (20 pts)
# The trend is statistically significant. There was an increase in auto theft from 2014 to 2017, but a steep decrease each subsequent year. The most 
# intense decrease being between 2019 and 2020
AutoTheft <- BaltCrime[BaltCrime$Description == 'AUTO THEFT',]
AutoTheft$Year <- as.numeric(format(as.Date(AutoTheft$CrimeDate, "%m/%d/%Y"), "%Y"))
YearlyAutoTheft <- aggregate(Total.Incidents ~ Year, data = AutoTheft, FUN = sum)
colnames(YearlyAutoTheft) <- c("Year", "Total Auto Thefts")
plot(YearlyAutoTheft$Year, YearlyAutoTheft$`Total Auto Thefts`, type = 'o', col = 'blue',
     main = "Auto Thefts by Year",
     xlab = "Year",
     ylab = "Total Auto Thefts")

model <- lm(`Total Auto Thefts` ~ Year, data = YearlyAutoTheft)
summary(model)

