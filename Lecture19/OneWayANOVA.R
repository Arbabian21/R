######################################################
#
# One-Way ANOVA in R
#
# Dataset: CyclerCPK.csv
######################################################

cycler1 <- read.csv('../DataSets/CyclerCPK.csv', header = TRUE)
head(cycler1)

# Boxplot to visually inspect for differences.
boxplot( cycler1$CPK1 ~ cycler1$TRT)

# ANOVA using the lm function
cycler1.lm <- lm(CPK1 ~ TRT, data = cycler1)
summary(cycler1.lm)
anova(cycler1.lm)

# ANOVA using the aov funciton
cycler1.aov <- aov(CPK1 ~ TRT, data = cycler1)
summary(cycler1.aov)

# Tukeys Honestly Significant Difference procedure
TukeyHSD(cycler1.aov, 'TRT')

# Create the Tukey object
cycler1.tukey <- TukeyHSD(cycler1.aov, 'TRT')
plot(cycler1.tukey)

# Multiple Comparison procedures...
# Fisher Least Significant Difference
pairwise.t.test(cycler1$CPK1, cycler1$TRT, p.adjust.method = 'none')

# Bonferroni correction
pairwise.t.test(cycler1$CPK1, cycler1$TRT,
                p.adjust.method = 'bonferroni')

# Benjamini & Hochberg
pairwise.t.test(cycler1$CPK1, cycler1$TRT, p.adjust.method = 'BH')

# ASSUMPTIONS

# Levene's test for constant variance
install.packages("car")
library(car)
leveneTest(cycler1.aov)

# Normality of the residuals
qqnorm(cycler1.aov$residuals)
shapiro.test(cycler1.aov$residuals)

# Look at histogram
hist(cycler1.aov$residuals)