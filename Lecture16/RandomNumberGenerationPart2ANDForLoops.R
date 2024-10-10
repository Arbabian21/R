#####################################################
#
# Random Number Generation Part 2 AND For Loop
#
# Simple simulation study
#
#####################################################

# Want to do a samll simulation study of a bus route that has 
# three pick up stops and one drop off.
# The simulaiton must account for:
#    Time between stops
#    Number of riders getting on at each sotp
#    Time it takes each rider to get on.
#    Assume all riders get off at a fourth stop. 
#    How long to unload everyone

# Time between stops
T1 <- rgamma(1, 70, 10) # mean of 7
T2 <- rgamma(1, 60, 10) # mean of 6
T3 <- rgamma(1, 120, 10) # mean of 12

# Number of riders at each stop
R1 <- rpois(1,5)        # mean of 5
R2 <- rpois(1,9)        # mean of 9
R3 <- rpois(1,15)       # mean of 15

# Time it takes to load the riders
L1 <- rgamma(1, R1, 10) # mean of 7
L2 <- rgamma(1, R2, 10) # mean of 6
L3 <- rgamma(1, R3, 10) # mean of 12

# Unload time
U1 <- rgamma(1, R1+R2+R3, 4)

# Total time involved
T1 +  T2 + T3 + L1 + L2 + L3 + U1

# FOR LOOP

# Create a container
Time1 <- rep(0,1000)

# For loop
for(i in 1:1000)
{
  # Time between stops
  T1 <- rgamma(1, 70, 10) # mean of 7
  T2 <- rgamma(1, 60, 10) # mean of 6
  T3 <- rgamma(1, 120, 10) # mean of 12
  
  # Number of riders at each stop
  R1 <- rpois(1,5)        # mean of 5
  R2 <- rpois(1,9)        # mean of 9
  R3 <- rpois(1,15)       # mean of 15
  
  # Time it takes to load the riders
  L1 <- rgamma(1, R1, 10) # mean of 7
  L2 <- rgamma(1, R2, 10) # mean of 6
  L3 <- rgamma(1, R3, 10) # mean of 12
  
  # Unload time
  U1 <- rgamma(1, R1+R2+R3, 4)
  
  # Total time involved
  Time1[i] <- T1 +  T2 + T3 + L1 + L2 + L3 + U1
}

hist(Time1, xlab = 'Time (min', main = 'Bus Route Times')
mean(Time1)
quantile(Time1, c(0, 0.25, 0.5, 0.75, 1))