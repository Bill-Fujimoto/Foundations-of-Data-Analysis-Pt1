library(SDSFoundations)
WR <- WorldRecords

# Question 1

# We want to find the best-fitting linear model for men's pole vault world records since 1970.
  # 1.  Create a new data frame that contains the world record cases in the men's        pole vault event in years 1970 and later. 
# 
  # 2. Use this data frame to answer the following questions.

#Subset the data to Mens Polevault
menvault <- WR[WR$Event=='Mens Polevault',]

# 1a. What is the standing world record height (in meters) for men's pole vault? (Round to 2 decimal places.)
  # Identify index of max height, then subset to that index (more reliable than        inspection!)
menvault[which(menvault$Record == max(menvault$Record)),]
 6.14 meters

 # 1b. In what year did the pole vault record first exceed 6 meters? (Look at the data to find the year.)
 menvault[which(menvault$Record >= 6),]
 1986

# 1c. Create a scatterplot showing the men's pole vault records since 1970 as a function of year. Fit a linear model to the data.
 # Create scatterplots of records since 1970:
 # Subset the data to Mens Polevault since 1970
 menvault_1970 <- menvault[menvault$Year >= 1970,]
 plot(menvault_1970$Year, menvault_1970$Record,main='Mens Polevault World Records',xlab='Year',ylab='World Record Height (m)',pch=16)
 #Run linear models
 linFit(menvault_1970$Year, menvault_1970$Record)

# Report the coefficient estimates for the linear model that describes the change in the men's pole vault world record since 1970.
 
# 1d. What is the intercept? (Round to 3 decimal places.)
  -51.854
 
# 1e. What is the slope? (Round to 3 decimal places.)
  0.029

# 1f. Which of the following best describes how the men's pole vault world record has changed since 1970?
  The record has increased by an average of 0.03 meters per year since 1970. 
  
# Question 2
  
# The table below shows several points for the function C = f(h), where C is the cost (in dollars) for a band of 4 members to play at a wedding, based on the number of hours, h, they perform.
  C	140	280	420	560
  h	0	  2	  4	  6 
  
# 2a. Which variable is the independent variable?
  h
  
# 2b. Identify the y-intercept for this function.
  140  
  
# 2c. How much does the band charge per hour that they perform?
  70

# 2d. If each member of the band earned $175 for the night and profits were split evenly among them, how many hours did the band perform?
  175*4 = 140 +70*x
  x = 8 hours

# Question 3
# We have bivariate data on a group of college students: the total amount (in dollars) spent on textbooks throughout their college career, and their GPA. The following linear regression model was used to predict GPA from number of dollars (in hundreds) spent:
  #   # Predicted GPA = 2.84 + .04*Dollars
  
# 3a. What is the predicted GPA of a student who spent a total of $970 on textbooks in college? (Round to 2 decimal places.)
  3.23
  
# 3b. If a student spent $0 on textbooks in college and graduated with a GPA of 3.71, what is her residual? (Round to 2 decimal places.)
  0.87
  
# 3c. If a student spent $1,450 on textbooks and graduated with a GPA of 2.91, what is his residual? (Please indicate whether the residual is positive or negative in your response, and round to 2 decimal places.)
  -0.51
  
# This question is worth zero points. It does not count towards your grade.
# 3d. A freshman learned of this study and calculated that she would need to spend $2,900 on textbooks to earn a 4.0 GPA. (You can confirm this calculation using the equation above). She decided to buy all of her textbooks new (rather than second-hand and cheaper) to help boost her GPA. Is she using the model in a statistically-sound way?
  No (correlation does not imply causation)
