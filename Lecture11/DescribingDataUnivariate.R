#######################################
#
# Data Description in R... Univariate
#
#######################################

# Read in the LegPressTraining.csv data
press1 <- read.csv("../DataSets/LegPressTraining.csv", header = TRUE)
head(press1)

# Mean (Balance Point of Data)
mean(press1$Age) #50.48571
mean(press1$Trial1) #25.52857
mean(press1$Trial2) #29.87143
mean(press1$Trial3) #38.37143

# Standard deviation (Average distance from the mean)
sd(press1$Age) #16.92159
sd(press1$Trial1) #4.441965
sd(press1$Trial2) #4.340311
sd(press1$Trial3) #5.664974

# Median (Middle value of the data)
median(press1$Age) #52
median(press1$Trial1) #25
median(press1$Trial2) #30
median(press1$Trial3) #30

# IQR (Inner Quartile Range) How wide is the middle 50% of the data
IQR(press1$Age) #27.75
IQR(press1$Trial1) #5.75
IQR(press1$Trial2) #5
IQR(press1$Trial3) #8

# Quantiles are really useful!!!
quantile(press1$Age, c(0, .25, .5, .75, 1)) 
# 0%   25%   50%   75%  100% 
# 21.00 37.00 52.00 64.75 76.00 
quantile(press1$Trial1, c(0, .25, .5, .75, 1)) 
# 0%   25%   50%   75%  100%  
# 14.00 23.25 25.00 29.00 33.00 
quantile(press1$Trial2, c(0, .25, .5, .75, 1)) 
# 0%  25%  50%  75% 100% 
# 18   28   30   33   38 
quantile(press1$Trial3, c(0, .25, .5, .75, 1)) 
# 0%  25%  50%  75% 100% 
# 25   35   38   43   50 

# Decile
quantile(press1$Trial3, c(0, .1, .2, .3, .4, .5, .6, .7 , .8, .9, 1)) 
# 0%  10%  20%  30%  40%  50%  60%  70% 
#   25.0 31.9 33.8 36.0 37.0 38.0 40.0 42.0 
# 80%  90% 100% 
# 43.0 46.0 50.0

