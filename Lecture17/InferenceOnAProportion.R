#####################################################
#
# Inference on Proportions
# Using prop.test()
#
#####################################################

# Suppose we want to estimate a proportion
# We take a simple random sample of 1020 people
# and find 234 exhibit the behavior of interest.
prop.test(234, 1020)
# 95 percent confidence interval:
#   0.2041836 0.2567089

# Suppose we are interested in determining if a majority of people
# enjoy eating happy meals at their local McDonald's
# They take a simple random sample of 982 and find that
# 543 say they enjoy happy meals.
prop.test(543, 982,
          p = .5,
          alternative = 'greater')


###################################################
#
# Difference in Proportions
#
###################################################

# Suppose we are interested in the rate of expulsion for 
# academic integrity violations between schools that have
# an honor code and those who do nottem-Simple random sample 532 of students who were charged for 
# academic integrity violations at schools that have an 
# Honor code and 121 were expelled
# -A second simple random sample of 786 students who were charged
# with academic integrity violations at schools who do not have
# an honnor code and 236 were expelled.

prop.test( c(121, 236), c(532, 786))
# 95 percent confidence interval:
#   -0.12229953 -0.02332216








