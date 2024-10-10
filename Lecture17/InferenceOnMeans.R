#####################################################
#
# Confidence Intervals on the Mean
# Using t.test()
#
#####################################################

# Read in the data
Cycler1 <- read.csv("../DataSets/CyclerCPK.csv",
                    header = TRUE)
head(Cycler1)

# Hypothesis for CPK1 < 787
# One Sided Test
# We have a specified value 787
t.test(Cycler1$CPK1,
       mu = 787,
       alternative = 'less')

# Two sided test
t.test(Cycler1$CPK1,
       mu = 787)

# Paired Difference test (difference over time)
t.test(Cycler1$CPK1, Cycler1$CPK4,
       paired = TRUE)

# Difference in means 
# Difference in CPK between M and F
t.test(Cycler1$CPK1[Cycler1$Gender == 'M'],
       Cycler1$CPK1[Cycler1$Gender == 'F'])
# Another way to do above
t.test(Cycler1$CPK1 ~ Cycler1$Gender)