# Question 1
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

# Question 2
V <- c(120.07, 87.43, 194.72, 101.88, 74.64, 52.14,
       42.19, 42.89, 112.29, 131.27)
CX <- c(114.48, 100.19, 104.61, 121.73, 85.03, 
        110.31, 151.75, 75.63, 162.72, 32.03)
CY <- c(50.54, 26.74, 66.58, 25.68, 63.81, 5.64,
        7.33, 37.69, 1.79, 53.94)
# Create a data frame with column headings
SchlattmanAndDirnagl <- data.frame(Vehicle = V, 'Compound X' = CX, 'Compound Y' = CY)

# Question 1
RepoxodinOrNot <- c('R', 'R', 'R', 'R', 'R', 'R',
                    'R', 'R', 'R', 'R', 'R', 'R', 
                    'R', 'R', 'R', 'R', 'R', 'C', 
                    'C', 'C', 'C', 'C', 'C', 'C', 
                    'C', 'C', 'C')
Gender <- c('F', 'M', 'F', 'M', 'M', 'F', 'F', 'M', 
            'M', 'F', 'F', 'F', 'M', 'M', 'F', 'M', 
            'M', 'F', 'F', 'M', 'M', 'F', 'M', 'F',
            'M', 'F', 'M')
SubjectNumber <- c(24, 25, 26, 27, 28, 29, 30, 31, 
                   32, 33, 34, 35, 36, 37, 38, 39, 
                   40, 01, 02, 03, 04, 05, 06, 07, 
                   08, 09, 10)
Time1 <- c(44, 42, 34, 45, 42, 37, 41, 42, 44, 43,
           38, 42, 42, 48, 40, 41, 47, 59, 58, 59, 
           54, 60, 62, 59, 53, 56, 57)
Time2 <- c(44, 44, 44, 42, 39, 44, 46, 47, 41, 41, 
           45, 43, 43, 42, 37, 44, 42, 57, 56, 66, 
           54, 57, 58, 56, 51, 59, 64)
Time3 <- c(48, 41, 44, 35, 44, 45, 46, 42, 38, 44, 
           46, 46, 41, 42, 41, 43, 45, 62, 49, 64, 
           59, 58, 64, 58, 52, 55, 61)
Time4 <- c(47, 44, 47, 44, 44, 38, 41, 41, 37, 49, 
           43, 39, 46, 41, 41, 44, 40, 65, 51, 56, 
           50, 64, 58, 63, 57, 55, 60)
Impulsivity <- data.frame(RepoxodinOrNot, Gender,
                          SubjectNumber, Time1,
                          Time2, Time3, Time4)

# Question 2
# Subsetting 'Impulsivity' data frame based on treatment group (Repoxodin or Control)
RepoxodinSubset <- Impulsivity[Impulsivity$RepoxodinOrNot == "R", ]
NoRepoxodinSubset <- Impulsivity[Impulsivity$RepoxodinOrNot == "C", ]

# Question 3
# Subsetting 'Impulsivity' data frame based on gender
MaleSubset <- Impulsivity[Impulsivity$Gender == "M", ]
FemaleSubset <- Impulsivity[Impulsivity$Gender == "F", ]

# Question 4
# Generating summary statistics for different subsets of the 'Impulsivity' data frame
ImpulsivitySummary <- summary(Impulsivity[, 4:7])
NoRepoxodinSummary <- summary(NoRepoxodinSubset[, 4:7])
RepoxodinSummary <- summary(RepoxodinSubset[, 4:7])
MaleSummary <- summary(MaleSubset[, 4:7])
FemaleSummary <- summary(FemaleSubset[, 4:7])

# Question 5
# Combine summaries into a single data frame
Summaries <- data.frame('Impulsivity' = ImpulsivitySummary, 
                        'Not Repoxodin' = NoRepoxodinSummary, 
                        'Repoxodin' = RepoxodinSummary, 
                        'Male' =MaleSummary,
                        'Female' = FemaleSummary)

# Question 6
# Using the 'rio' package to export the summaries to an Excel file named 'AllSummaries.xlsx'
library(rio)
export(Summaries, "./AllSummaries.xlsx")
