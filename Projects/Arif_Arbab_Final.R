# Arbab Arif
# Final Exam
# 5/9/24
# Dr. Ya Su
# Stat 321

# 1.) (5 pts) Read in the Efficacy.csv dataset using code.
efficacy_data <- read.csv("./R/DataSets/Efficacy-4.csv",
                          header = TRUE)
head(efficacy_data)

# 2.) (15 pts) Create adequate summaries for Weight and Efficacy.
summary(efficacy_data$Weight)
# Min: 53.3
# 1st Qt: 72.9
# Med: 77.5
# Mean: 79.4
# 3rd Qt: 86.9
# Max: 109.4
sd_weight <- sd(efficacy_data$Weight) # 9.95
iqr_weight <- IQR(efficacy_data$Weight) # 14

summary(efficacy_data$Efficacy)
# Min: 72.7
# 1st Qt: 87.1
# Med: 94.1
# Mean: 91.86
# 3rd Qt: 97.72
# Max: 103.9
sd_efficacy <- sd(efficacy_data$Efficacy) # 7.89
iqr_efficacy <- IQR(efficacy_data$Efficacy) # 10.625

# 3.) (15 pts) Create histograms for Weight and Efficacy.
hist(efficacy_data$Weight, main="Histogram of Weight", xlab="Weight", col="blue", breaks=20)
# shape: skewed right
# center: about 75
# spread: 53.3 - 109.4
# Unusual Features: huge drop off from 70 - 50

hist(efficacy_data$Efficacy, main="Histogram of Efficacy", xlab="Efficacy", col="red", breaks=20)
# shape: skewed right
# center: about 100
# spread: 72.7 - 103.9
# Unusual Features: none really

# 4.) (10 pts) Create a scaTerplot between Weight (Y) and Efficacy (X).
plot(efficacy_data$Efficacy, efficacy_data$Weight, main="Scatterplot of Weight vs. Efficacy",
     xlab="Efficacy", ylab="Weight", pch=19, col='blue')
# There is a strong relationship. As efficacy increases, weight decreases.

# 5.) (20 pts) Perform a regression analysis to determine if Weight and Efficacy are related. Be
# sure to interpret the coefficients in terms of the problem.
efficacy_reg <- lm(Efficacy ~ Weight, data=efficacy_data)
names(efficacy_reg)

confint(efficacy_reg)
confint(efficacy_reg, level = .99)

summary(efficacy_reg)

# The coefficient for Weight is around -.4805 which means that for each unit increase in weight,
# efficacy decreases by .4805. Negative relationship between efficacy and weight.

# The intercept is about 130.019, this is expected efficacy when weight is zero however
# that makes no sense so you can disregard this.

# 6.) (5 pts) Read in the Treatment.csv dataset using code.
treatment_data <- read.csv("./R/DataSets/Treatment-3.csv",
                           header = TRUE)
head(treatment_data)

# 7.) (10 pts) Create a side-by-side boxplot of Efficacy versus Treatment.
# Merging datasets on 'ID'
combined_data <- merge(efficacy_data, treatment_data, by = "ID")

boxplot(Efficacy ~ Treatment, data = combined_data, main = "Boxplot of Efficacy by Treatment",
        ylab = "Efficacy", xlab = "Treatment", col = c("red", "green", "blue", "yellow"))

# 8.) (10 pts) Perform an ANOVA test to see if there are differences in Efficacy based on
# Treatment.
efficacy_anova <- aov(Efficacy ~ Treatment, data = combined_data)
summary(efficacy_anova)
# Shows significant difference

# 9.) (10 pts) If necessary, complete a (A) Tukey’s HSD (B) Bonferroni and (C) Benjamini-
# Hochberg mulAple comparisons tests to determine which treatments are different,
# report the least conservaAve findings among three methods (A), (B) or (C). If not,
# present the reason.

# Tukey's HSD test
tukey_results <- TukeyHSD(efficacy_anova)

# Bonferroni adjustment
bonferroni_results <- p.adjust(tukey_results$Treatment[, "p adj"], method = "bonferroni")

# Benjamini-Hochberg adjustment
bh_results <- p.adjust(tukey_results$Treatment[, "p adj"], method = "BH")

# Printing results of Tukey's HSD
print("Tukey's HSD Results:")
print(tukey_results)

# Printing Bonferroni adjusted p-values
print("Bonferroni Adjusted p-values:")
print(bonferroni_results)

# Printing Benjamini-Hochberg adjusted p-values
print("Benjamini-Hochberg Adjusted p-values:")
print(bh_results)

# Interpretation: Tukey's found Significant differences between treatments. S vs. C: S have 
# a significantly lower efficacy compared to C. S vs.F: S have a significant lower effiacy 
# compared to F. T vs.S: T has a significant higher efficacy compared to S. T vs. F: T has a 
# significant lower efficacy compared to F but this is less significant thatn the ones above. 
# The Bonferroni adjustment is more conservative and shows that significant differences remain
# similar to above.
# Benjamin Hochberg also shows similar significant results.