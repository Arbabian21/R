# Question 1
par( mfrow = c(1,1) )

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

# 2 Histograms on top of each other
par( mfrow = c(1,3) )
hist(LafiAndKaneene$y,
     xlab = "Standing Height",
     col = 'red')
# shape: bimodal
# center: about 165
# spread: about 155 - 170
# unusual feature: gap between 162 - 165

hist(LafiAndKaneene$x1,
     xlab = "Sitting Height",
     col = 'green')
# shape: bimodal
# center: about 88
# spread: 80-90
# unusual feature: Gap between 84 and 86

hist(LafiAndKaneene$x6,
     xlab = "Lower Leg",
     col = 'blue')
# shape: symmetric
# center: about 40
# spread: 37-43
# Unusual Features: nothing

# resetting view
par( mfrow = c(1,1) )

# Question 2
V <- c(120.07, 87.43, 194.72, 101.88, 74.64, 52.14,
       42.19, 42.89, 112.29, 131.27)
CX <- c(114.48, 100.19, 104.61, 121.73, 85.03, 
        110.31, 151.75, 75.63, 162.72, 32.03)
CY <- c(50.54, 26.74, 66.58, 25.68, 63.81, 5.64,
        7.33, 37.69, 1.79, 53.94)
# Create a data frame with column headings
SchlattmanAndDirnagl <- data.frame(Vehicle = V, 'Compound X' = CX, 'Compound Y' = CY)

# Create a side by side boxplot infarction across vehicle and 
# Side by side Boxplots
boxplot(SchlattmanAndDirnagl$Vehicle, SchlattmanAndDirnagl$Compound.X, SchlattmanAndDirnagl$Compound.Y,
        ylab = "Infarction",
        names = c("Vehicle", "Compound X", "Compound Y"),
        col = c("red", "green", "blue"
                ),
        main = " Boxplot of infarction across vehicle and compounds")
## Vehicle
# Shape: Skewed Right
# Center: around 100
# Spread: about 45 - 200
# Unusual Features: Gap between 0 and 45

## Compund x
# Shape: symmetric
# Center: around 110
# Spread: about 45 - 165
# Unusual Features: Gap between 0 and 40, gap between 160 and 200

## Compound Y
# Shape: symmetric
# Center: around 40
# Spread: 0 - 75
# Unusual Features: Gap between 75 and 200

# Question 3
library(rio)
# I stored the file in my Datasets folder, so I will be
# Writing the code according to that. But, since the 
# researcher stored the file in "C:\TempData", replace
# all the "../Datasets" with "C:\TempData" and it should
# work

site1 <- import("C:\TempData\Impulsivity.xlsx",
                which = "Site 1")
site2 <- import("C:\TempData\Impulsivity.xlsx",
                which = "Site 2")
site3 <- import("C:\TempData\Impulsivity.xlsx",
                which = "Site 3")
site4 <- import("C:\TempData\Impulsivity.xlsx",
                which = "Site 4")
site5 <- import("C:\TempData\Impulsivity.xlsx",
                which = "Site 5")

# site1 <- import("../DataSets/Impulsivity.xlsx",
#                 which = "Site 1")
# site2 <- import("../DataSets/Impulsivity.xlsx",
#                 which = "Site 2")
# site3 <- import("../DataSets/Impulsivity.xlsx",
#                 which = "Site 3")
# site4 <- import("../DataSets/Impulsivity.xlsx",
#                 which = "Site 4")
# site5 <- import("../DataSets/Impulsivity.xlsx",
#                 which = "Site 5")
ImpulsivityStack <- rbind(site1, site2, site3, site4, site5)

# Histograms of Age across treatments. (10 pts)
TreatmentN <- ImpulsivityStack[ImpulsivityStack$TRT == "N",]
TreatmentL <- ImpulsivityStack[ImpulsivityStack$TRT == "L",]
TreatmentC <- ImpulsivityStack[ImpulsivityStack$TRT == "C",]

par( mfrow = c(1,3) )
hist(TreatmentN$Age,
     main = "Age Across Treatment N",
     xlab = "Age",
     col = 'red')
# shape: bimodal
# center: about 40
# spread: about 20 - 55
# unusual feature: not really

hist(TreatmentC$Age,
     main = "Age Across Treatment C",
     xlab = "Age",
     col = 'green')
# shape: bimodal/ skewed left
# center: about 40
# spread: about 20 - 55
# unusual feature: not really

hist(TreatmentL$Age,
     main = "Age Across Treatment L",
     xlab = "Age",
     col = 'blue')
# shape: trimodal/skewed left
# center: about 42
# spread: about 20 - 55
# unusual feature: not really, maybe trimodal weird

# Histograms of Age for different gender. (10 pts)
Male <- ImpulsivityStack[ImpulsivityStack$Gender == "M",]
Female <- ImpulsivityStack[ImpulsivityStack$Gender == "F",]

par( mfrow = c(1,2) )
hist(Male$Age,
     main = "Age Across Males",
     xlab = "Age",
     col = 'blue')
# shape: bimodal
# center: about 41
# spread: about 20 - 55
# unusual feature:

hist(Female$Age,
     main = "Age Across Female",
     xlab = "Age",
     col = 'pink')
# shape: skewed left
# center: about 45
# spread: 20-55
# Unusual Features: nothing

par( mfrow = c(1,1) )

# Box plots of Impulsivity for each visit time (You should have 5 boxplots).  (10 pts)
# Create a side by side boxplot against treatment
boxplot(ImpulsivityStack$Imp1, ImpulsivityStack$Imp2, ImpulsivityStack$Imp3, ImpulsivityStack$Imp4, ImpulsivityStack$Imp5,
        main = "Impulsivity for Vists",
        names = c("IMP1", "IMP2", "IMP3", "IMP4", "IMP5"),
        col = c("pink", "red", "purple", "blue", "green"))
# Imp 1
# shape: symmetric
# center: about 73
# spread: 66-77
# Unusual Features: outlier at 79

# Imp 2
# shape: symmertic
# center: about 67
# spread: 61 - 76
# Unusual Features: outlier at 77, outlier at 58

# Imp 3
# shape: symmetric
# center: about 65
# spread: 57 - 73
# Unusual Features: outlier at 56

# Imp 4
# shape: symmetric
# center: about 65
# spread: 58-73
# Unusual Features: nothing

# Imp 5
# shape: symmetric
# center: about 60
# spread: 50-67
# Unusual Features: outlier at 70

# Box plots of Impulsivity across treatments.You have to construct them for each 
# time visits, i.e., boxplots of imp1 and different treatments, imp2 and different treatments, etc. (10 pts)
boxplot(ImpulsivityStack$Imp1 ~ ImpulsivityStack$TRT,
        xlab = 'Treatment',
        ylab = 'Impulsivity',
        main = 'Impulsivity 1 Across Treatments',
        col = c('green', 'blue', 'red'))
# C
# shape: symmetric
# center: about 72
# spread: 66-76
# Unusual Features: outlier at 80

# L
# shape: symmetric
# center: about 72
# spread: 66-77
# Unusual Features: outlier at 65 and 78

# N
# shape: symmetric
# center: about 73
# spread: 67-77
# Unusual Features: nothing

boxplot(ImpulsivityStack$Imp2 ~ ImpulsivityStack$TRT,
        xlab = 'Treatment',
        ylab = 'Impulsivity',
        main = 'Impulsivity 2 Across Treatments',
        col = c('green', 'blue', 'red'))
# C
# shape: symmetric
# center: about 67
# spread: 62-75
# Unusual Features: nothing

# L
# shape: symmetric
# center: about 67
# spread: 63-73
# Unusual Features: nothing

# N
# shape: skewed right
# center: about 67
# spread: 62-76
# Unusual Features: outlier at 77


boxplot(ImpulsivityStack$Imp3 ~ ImpulsivityStack$TRT,
        xlab = 'Treatment',
        ylab = 'Impulsivity',
        main = 'Impulsivity 3 Across Treatments',
        col = c('green', 'blue', 'red'))
# C
# shape: skewed left
# center: about 65
# spread: 60-75
# Unusual Features: nothing

# L
# shape: symmetric
# center: about 65
# spread: 59-73
# Unusual Features: nothing

# N
# shape: skewed right
# center: about 65
# spread: 59-74
# Unusual Features: nothing

boxplot(ImpulsivityStack$Imp4 ~ ImpulsivityStack$TRT,
        xlab = 'Treatment',
        ylab = 'Impulsivity',
        main = 'Impulsivity 4 Across Treatments',
        col = c('green', 'blue', 'red'))
# C
# shape: symmetric
# center: about 65
# spread: 58-72
# Unusual Features: huge spread

# L
# shape: skewed left
# center: about 65
# spread: 58-71
# Unusual Features: 

# N
# shape: symmetric
# center: about 65
# spread: 59-71
# Unusual Features: nothing

boxplot(ImpulsivityStack$Imp5 ~ ImpulsivityStack$TRT,
        xlab = 'Treatment',
        ylab = 'Impulsivity',
        main = 'Impulsivity 5 Across Treatments',
        col = c('green', 'blue', 'red'))
# C
# shape: skewed left
# center: about 61
# spread: 55-66
# Unusual Features: outlier at 67

# L
# shape: symmetric
# center: about 60
# spread: 50-67
# Unusual Features: outlier at 70

# N
# shape: symmetric
# center: about 60
# spread: 50-67
# Unusual Features: nothing

# Box plots of Impulsivity across gender. You have to construct them for each 
# time visits, i.e., for imp1 and different gender, imp2 and different gender, etc. (10 pts)
boxplot(ImpulsivityStack$Imp1 ~ ImpulsivityStack$Gender,
        xlab = 'Gender',
        ylab = 'Impulsivity',
        main = 'Impulsivity 1 Across Genders',
        col = c('pink', 'blue'))
# F
# shape: symmetric
# center: about 72
# spread: 68-76
# Unusual Features: outlier at 80, 78, 77, 67, 66

# M
# shape: symmetric
# center: about 72
# spread: 65-79
# Unusual Features: nothing

boxplot(ImpulsivityStack$Imp2 ~ ImpulsivityStack$Gender,
        xlab = 'Gender',
        ylab = 'Impulsivity',
        main = 'Impulsivity 2 Across Genders',
        col = c('pink', 'blue'))
# F
# shape: skewed left
# center: about 68
# spread: 62-74
# Unusual Features: outlier at 76, 75, 61, 59

# M
# shape: skewed right
# center: about 68
# spread: 63-74
# Unusual Features: outlier at 77, 75, 63

boxplot(ImpulsivityStack$Imp3 ~ ImpulsivityStack$Gender,
        xlab = 'Gender',
        ylab = 'Impulsivity',
        main = 'Impulsivity 3 Across Genders',
        col = c('pink', 'blue'))
# F
# shape: symmetric
# center: about 65
# spread: 59-75
# Unusual Features: outlier at 55

# M
# shape: symmetric
# center: about 65
# spread: 59-75
# Unusual Features: nothing

boxplot(ImpulsivityStack$Imp4 ~ ImpulsivityStack$Gender,
        xlab = 'Gender',
        ylab = 'Impulsivity',
        main = 'Impulsivity 4 Across Genders',
        col = c('pink', 'blue'))
# F
# shape: symmetric
# center: about 65
# spread: 58-72
# Unusual Features: nothing

# M
# shape: symmetric
# center: about 65
# spread: 58-71
# Unusual Features: nothing

boxplot(ImpulsivityStack$Imp5 ~ ImpulsivityStack$Gender,
        xlab = 'Gender',
        ylab = 'Impulsivity',
        main = 'Impulsivity 5 Across Genders',
        col = c('pink', 'blue'))
# F
# shape: symmetric
# center: about 60
# spread: 50-67
# Unusual Features: outlier at 70

# M
# shape: symmetric
# center: about 60
# spread: 53-67
# Unusual Features: nothing
