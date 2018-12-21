library(SDSFoundations)
bull <-BullRiders
# Primary Research Question
# For the 2013 season, Is there a linear relationship between how often a rider placed in the Top 10 and the number of times he stayed on his bull for a full 8 seconds?

#### Examine the Data ####
# 1a. How many observations are in the dataset?
#   58

# 1b. How many of the first 10 riders in the dataset have been pro for 10 years or more?
#   3
# 
# 1c. Of the top 15 riders so far in 2015, how many rides were completed by the rider with the fewest buck-outs in 2014?
#   0

# 2a. Which variable tells us how many times the rider has placed in the Top 10 at the end of the 2013 season? The variable name in the dataset is:
#   Top10_13
 
# 2b. What type of variable is this?
#   numerical

# 2c. Which variable tells us the number of times a rider stayed on his bull for the full 8 seconds in 2013? The variable name in the dataset is:
#   Rides13
 
# 2d. What type of variable is this?
#   numerical

# 3. We will use correlation to answer this lab question. Why?
#   We want to explore a linear relationship between two quantitative variables. 

# 4. We should generate a scatterplot of these two variables before we continue our analysis. Why?
#   We want to confirm that the relationship is linear.

#### Prepare for the Analysis #####

# Breakdown Your Analysis

# Let's break this analysis into its required steps:
# 1. Create a subset of the data which contains only those riders that have participated in at least one event in 2013.
# 2. Create a scatterplot of the two variables of interest.
# 3. Check to see that the relationship is linear.  Plot a line of best fit as a guide.
# 4. If the relationship is linear, calculate the correlation coefficient.
# 5. Carefully examine any outliers.
# 6. Interpret what the correlation says about the linear relationship between these variables. 
# 
# Here is the code you will use:

# #Subset for riders that participated in at least one event in 2013
new_bull <- bull[bull$Events13  > 0 ,]
# 
# Visualize and describe the first variable of interest
hist(new_bull$Rides13)
fivenum(new_bull$Rides13)
mean(new_bull$Rides13)
sd(new_bull$Rides13)
# 
# # Visualize and describe the second variable of interest
hist(new_bull$Top10_13)
fivenum(new_bull$Top10_13)
mean(new_bull$Top10_13)
sd(new_bull$Top10_13)
# 
# # Create a scatterplot
plot(new_bull$Rides13,new_bull$Top10_13)
# 
# # Add line of best fit
abline(lm(new_bull$Top10_13~new_bull$Rides13))
# 
# # Calculate the correlation coefficient
cor(new_bull$Rides13,new_bull$Top10_13)
# 
# # Create a correlation matrix 
vars <- c("Top10_13", "Rides13")
cor(new_bull[,vars])


  ### Problem questions ###

# 1. Which cases will be selected by this line of code?
   new_bull <- bull[bull$Events13 > 0 ,]
#  riders that have completed more than zero Events in 2013 

# 2. What will appear in the scatterplot produced by this line of code?
   plot(new_bull$Rides13,new_bull$Top10_13)
#  There will be a single data point for each bull rider. 

# 3. Which value is not a possible output of the following line of code?
#   cor(new_bull$Rides13,new_bull$Top10_13)
# 
# 0.75
# -1.02 correct
# 0.61
# -0.04

# 4. A correlation matrix allows you to calculate multiple correlation coefficients at a time. Here, we are only asking for the correlation between Rides13 and Top10_13. If you wanted to include other variables as well, how would you do that?
#   
#   Create a correlation matrix
   vars <-c("Top10_13", "Rides13")
   cor(new_bull[,vars])
# 
#  Add the variable names to the "vars" object. correct

#  The following plot was produced using the code listed below:

  plot(bull$Events12, bull$BuckOuts12)
  # abline(lm(bull$Events12~bull$BuckOuts12))
  abline(lm(bull$BuckOuts12~bull$Events12))
# 5. In the above scatterplot, why does the line of best fit seem to not be going through the center of the scatterpot? (Refer to the code below and the dataset in R for help.)
#  The "Events" and "BuckOuts" variables should be switched in the abline command.  correct 

#### Conduct the Analysis ####
   ### Problem questions ###
  # What do the histogram and descriptive statistics tell us about the distribution of the Rides13 variable?
  # 1a. On average, a bull rider in 2013 has how many rides? (Report the median because the histogram is not symmetrical.)
  # 19

  # 1b. These bull riders made it into the Top 10 an average of ________ times in 2013. (Hint: Remember again that the histogram is not symmetrical.)
 # 6
  
  # 2a. The relationship looks ________, ________, and ________.
  # linear
  # moderately strong
  # positive
 
  # 2b. It looks like bull riders that appear frequently in the Top 10 list tend to have a ________ number of successful rides.
  # higher
  
  # 3a. The correlation, rounded to three decimal places, between the number of Top 10 appearances and the number of successful rides for 2013 is r =
  #   .917
  # 
  # 3b. How many times does this value appear in the correlation matrix? (Report as a numeral)
  # 2
  
  # 4. On the scatterplot, we see a data point with a fairly large residual. This rider had 22 rides, but he only placed in the Top 10 two times. This rider's data point falls ________ the line of best fit. If his data followed the line of best fit, he should have placed in the Top 10 about ________ times.
  # below
  # 6  

  # Use this code to help identify this rider:
  # identify a specific record:
    which(new_bull$Top10_13==2 & new_bull$Rides13==22)
    new_bull[4,]
  # 5. After looking at the data for this rider, can you explain why he has placed in the Top 10 so few times?
  # His ride percentage was only about 33%, which wasn't high enough to place him in the Top 10. 

#### Draw Conclusions #####
  
  # There is a strong positive linear relationship between the number of 8-second rides a bull rider completed and the total number of times he made it in the Top 10 after the 2013 season, (r = .917). The average number of rides for these bull riders was around 19. There were no significant outliers. One rider appeared to have placed in the top-10 rankings only twice, despite an above-average number of rides. Upon closer inspection, we could see that he did not have a very high ride percentage which might account for his few appearances in the Top 10.
  
  


#### Some other code ####
  
top15 <- bull[bull$Rank15 <= 15, ]
buckouts14 <- top15$BuckOuts14
which(top15$BuckOuts14 == min(buckouts14))
first10 <- bull[bull$Rank15 <= 10, ]
pro10yrs <- first10[first10$YearsPro >= 10, ]
OneOrMoreEvents_13 <- bull[bull$Events13 >= 1, ]

# Create a scatterplot
plot(OneOrMoreEvents_13$Rides13, OneOrMoreEvents_13$Top10_13, ylab="Num Top 10 finish in 2013", xlab="Rides 8s")
# Add line of best fit
abline((lm(OneOrMoreEvents_13$Top10_13~OneOrMoreEvents_13$Rides13)))
# Calculate the correlation coefficient
cor(OneOrMoreEvents_13$Top10_13, OneOrMoreEvents_13$Rides13)
# Create a correlation matrix 
vars <- c("Top10_13", "Rides13")
cor(OneOrMoreEvents_13[,vars])
