library(SDSFoundations)
bull <-BullRiders

# Question 1

# During a professional bull-riding event, riders usually attempt to ride a bull three or more times.  This means that they can record a "ride" (successfully staying on the bull) multiple times in the same event

# 1. Subset the dataset for riders that had at least 1 ride in the 2014 season. Call this dataset new_bull.
new_bull <- bull[bull$Rides14 >= 1, ]
# 2. Create a new variable or vector for the average number of rides per event for each bull rider in the new_bull dataset:
RidesPerEvent14 <- new_bull$Rides14/new_bull$Events14
# 3. Make a histogram of your "rides per event" variable and find the five-number summary for your "rides per event" variable.

# Visualize and describe the RidesPerEvent14
hist(RidesPerEvent14)
fivenum(RidesPerEvent14)
mean(RidesPerEvent14)
sd(RidesPerEvent14)
median(RidesPerEvent14)

#  Create a scatterplot of "rides per event" and yearly ranking (defined by the "Rank14" variable)
plot(RidesPerEvent14, new_bull$Rank14)
abline((lm(new_bull$Rank14~RidesPerEvent14)))

# correlation
cor(RidesPerEvent14, new_bull$Rank14)

# Question 2
Examgrade <- c(74,68,87,90,94,84,92,88,82,93,65,90)
Minutes <- c(30,45,180,95,130,140,30,80,60,110,0,80)

# 2a. What is the correlation coefficient based on the data? (Round to 3 decimal places.)
cor(Examgrade, Minutes)

# 2b. Approximately what percentage of the variation in exam scores can be explained by the amount of time that each student studied? (Roune to whole number without a % sign.)
cor(Examgrade, Minutes)^2

# 2c. Create a scatterplot of the data (exam grades and time spent studying). What is the value of the outlier (the student that got a high grade but didn't study very long)?
plot(Minutes, Examgrade)

# 2d. When the outlier is removed, what is the new value of r? (Round to 3 decimal places.)
Examgrade1 <- c(74,68,87,90,94,84,88,82,93,65,90)
Minutes1 <- c(30,45,180,95,130,140,80,60,110,0,80)
cor(Examgrade1, Minutes1)

# 2e. How did the outlier impact our efforts to assess the relationship between time spent studying and exam grades?
  
# The outlier caused the relationship to look weaker than it really is. correct

