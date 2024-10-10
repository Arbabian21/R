# Arbab Arif
# Project 7
# 4/3/24
# Dr. Ya Su
# Stat 321

# Create data frames
y <- c(165.8, 169.8, 170.7, 170.9, 157.5, 165.9, 
       158.7, 166.0, 158.7, 161.5, 167.3, 167.4, 
       159.2, 170.0, 166.3)
x1 <- c(88.7, 90.0, 87.7, 87.1, 81.3, 88.2, 86.1, 
        88.7, 83.7, 81.2, 88.6, 83.2, 81.5, 87.9, 
        88.3)
x2 <- c(31.8, 32.4, 33.6, 31.0, 32.1, 31.8, 30.6, 
        30.2, 31.1, 32.3, 34.8, 34.3, 31.0, 34.2,
        30.6)
x3 <- c(28.1, 29.1, 29.5, 28.2, 27.3, 29.0, 27.8, 
        26.9, 27.1, 27.8, 27.3, 30.1, 27.3, 30.9,
        28.8)
x4 <- c(18.7, 18.3, 20.7, 18.6, 17.5, 18.6, 18.4,
        17.5, 18.1, 19.1, 18.3, 19.2, 17.5, 19.4,
        18.3)
x5 <- c(40.3, 43.3, 43.7, 43.7, 38.1, 42.0, 40.0,
        41.6, 38.9, 42.8, 43.1, 43.4, 39.8, 43.1,
        41.8)
x6 <- c(38.9, 42.7, 41.1, 40.6, 39.6, 40.6, 37.0,
        39.0, 37.5, 40.1, 41.8, 42.2, 39.6, 43.7,
        41.0)
x7 <- c(6.7, 6.4, 7.2, 6.7, 6.6, 6.5, 5.9, 5.9, 
        6.1, 6.2, 7.3, 6.8, 4.9, 6.3, 5.9)
# Combining into a data frame
LafiAndKaneene <- data.frame(y, x1, x2, x3, x4, x5, 
                             x6, x7)

# Question 1 Create a scatterplot of Standing Height and Lower Leg from problem 1.5 and describe it (20 pts).
plot(LafiAndKaneene$y, LafiAndKaneene$x6,
     xlab = "Standing Height",
     ylab = "Lower Leg",
     main = "Lafi And Kaneene scatterplot of Standing Height and Lower Leg",
     col = 'blue')
# strength: Not super strong but definitely correlated
# Direction: Positive direction
# Linear or non linear: Definitely looks a little linear

# Question 2 In the above scatterplot, add a regression line between Standing Height and Lower Leg. (30 pts)
abline(lm(LafiAndKaneene$x6 ~ LafiAndKaneene$y),
       lty = 3,
       col = 'red',
       lwd = 2)

# Question 3 Create a scatterplot of revenue versus month with correct titles for the plot. Comment on your plot. What do you observe? (30 pts)
monthlySales <- read.csv('C:\TempData\StoreSales.csv', header = TRUE)
plot(monthlySales$Month, monthlySales$Revenue,
     xlab = 'Month',
     ylab = 'Revenue',
     main = 'Store Sales Scatterplot of Revenue Versus Month',
     col = 'red')
# I see that months 1 - 11 are pretty consistent when it comes to revenue
# However, month 12 is a huge jump in revenue across all stores. 
# This is likely due to the holiday season ( Christmas, Black Friday)

# Question 4 Create a wide dataset with each row corresponding to a store and the remaining columns are the monthly revenue values. (30 pts)
# Subset the data by each month
M1 <- monthlySales[monthlySales$Month == 1, c(1,3)]
M2 <- monthlySales[monthlySales$Month == 2, c(1,3)]
M3 <- monthlySales[monthlySales$Month == 3, c(1,3)]
M4 <- monthlySales[monthlySales$Month == 4, c(1,3)]
M5 <- monthlySales[monthlySales$Month == 5, c(1,3)]
M6 <- monthlySales[monthlySales$Month == 6, c(1,3)]
M7 <- monthlySales[monthlySales$Month == 7, c(1,3)]
M8 <- monthlySales[monthlySales$Month == 8, c(1,3)]
M9 <- monthlySales[monthlySales$Month == 9, c(1,3)]
M10 <- monthlySales[monthlySales$Month == 10, c(1,3)]
M11 <- monthlySales[monthlySales$Month == 11, c(1,3)]
M12 <- monthlySales[monthlySales$Month == 12, c(1,3)]

names(M1)[2] <- "1"
names(M2)[2] <- "2"
names(M3)[2] <- "3"
names(M4)[2] <- "4"
names(M5)[2] <- "5"
names(M6)[2] <- "6"
names(M7)[2] <- "7"
names(M8)[2] <- "8"
names(M9)[2] <- "9"
names(M10)[2] <- "10"
names(M11)[2] <- "11"
names(M12)[2] <- "12"

monthlySales1 <- merge(M1, M2, by = "Store", all.x = TRUE, all.y = TRUE)
monthlySales2 <- merge(M3, M4, by = "Store", all.x = TRUE, all.y = TRUE)
monthlySales3 <- merge(M5, M6, by = "Store", all.x = TRUE, all.y = TRUE)
monthlySales4 <- merge(M7, M8, by = "Store", all.x = TRUE, all.y = TRUE)
monthlySales5 <- merge(M9, M10, by = "Store", all.x = TRUE, all.y = TRUE)
monthlySales6 <- merge(M11, M12, by = "Store", all.x = TRUE, all.y = TRUE)


monthlySales7 <- merge(monthlySales1, monthlySales2, by = "Store", all.x = TRUE, all.y = TRUE)
monthlySales8 <- merge(monthlySales3, monthlySales4, by = "Store", all.x = TRUE, all.y = TRUE)
monthlySales9 <- merge(monthlySales5, monthlySales6, by = "Store", all.x = TRUE, all.y = TRUE)

monthlySales10 <- merge(monthlySales7, monthlySales8, by = "Store", all.x = TRUE, all.y = TRUE)
monthlySales <- merge(monthlySales10, monthlySales9, by = "Store", all.x = TRUE, all.y = TRUE)

# Question 5 Create a summary of revenues for each store.  Note that summaries must include Mean, Median, Standard Deviation, IQR, Min, Max, Q1 and Q3.  Be sure to put these in the comments of your code. (30 pts)
rowMeans(monthlySales[,2:13])
# Means
# MA0041 : 1773216
# MA0044 : 1791352
# ME0003 : 1720529
# NC0041 : 1726232
# NE0041 : 1763524
# NM0003 : 1734061
# NM0004 : 1731194
# NM0034 : 1758293
# NM0331 : 2161466
# RI0031 : 1698196
# SC0001 : 1755348
# SC0041 : 1739878
# SC0345 : 1684606
# VA0031 : 1705482

apply(monthlySales[1:14, 2:13], 1, median)
# median
# MA0041 : 1687540
# MA0044 : 1738690
# ME0003 : 1637824
# NC0041 : 1634213
# NE0041 : 1706901
# NM0003 : 1679170
# NM0004 : 1669338
# NM0034 : 1670653
# NM0331 : 2112982
# RI0031 : 1654064
# SC0001 : 1699951
# SC0041 : 1674327
# SC0345 : 1641650
# VA0031 : 1677447

apply(monthlySales[1:14, 2:13], 1, sd)
# Standard Deviation
# MA0041 : 292648.4
# MA0044 : 271824.1
# ME0003 : 255887.4
# NC0041 : 249654.9
# NE0041 : 217042.9
# NM0003 : 272780.7
# NM0004 : 251985.8
# NM0034 : 307288.4
# NM0331 : 229514.1
# RI0031 : 252218.8
# SC0001 : 197305.3
# SC0041 : 221901.7
# SC0345 : 245318.9
# VA0031 : 241826.6

apply(monthlySales[1:14, 2:13], 1, IQR)
# IQR
# MA0041 : 105684.83
# MA0044 : 100717.72
# ME0003 : 124856.29
# NC0041 : 142989.54
# NE0041 : 85045.07
# NM0003 : 111896.42
# NM0004 : 60255.12
# NM0034 : 132810.19
# NM0331 : 153338.29
# RI0031 : 92880.15
# SC0001 : 104264.41
# SC0041 : 151444.30
# SC0345 : 108160.19
# VA0031 : 159201.62

apply(monthlySales[1:14, 2:13], 1, min)
# Min
# MA0041 : 1596073
# MA0044 : 1556242
# ME0003 : 1468064
# NC0041 : 1538689
# NE0041 : 1549432
# NM0003 : 1491877
# NM0004 : 1542016
# NM0034 : 1541627
# NM0331 : 1940277
# RI0031 : 1515876
# SC0001 : 1605479
# SC0041 : 1595935
# SC0345 : 1458647
# VA0031 : 1470841

apply(monthlySales[1:14, 2:13], 1, max)
# Max
# MA0041 : 2676496
# MA0044 : 2608373
# ME0003 : 2468168
# NC0041 : 2452462
# NE0041 : 2412215
# NM0003 : 2560826
# NM0004 : 2507212
# NM0034 : 2705793
# NM0331 : 2826570
# RI0031 : 2458571
# SC0001 : 2341589
# SC0041 : 2404866
# SC0345 : 2415358
# VA0031 : 2378423

apply(monthlySales[1:14, 2:13], 1, quantile)
# Quantile: Q1 : Q3
# MA0041 : 1646386 : 1752071
# MA0044 : 1686696 : 1787414
# ME0003 : 1608150 : 1733007
# NC0041 : 1590793 : 1733783
# NE0041 : 1680505 : 1765550
# NM0003 : 1616153 : 1728049
# NM0004 : 1640866 : 1701121
# NM0034 : 1633940 : 1766750
# NM0331 : 2031838 : 2185176
# RI0031 : 1574373 : 1667253
# SC0001 : 1663882 : 1768147
# SC0041 : 1614426 : 1765870
# SC0345 : 1580413 : 1688573
# VA0031 : 1577802 : 1737004
