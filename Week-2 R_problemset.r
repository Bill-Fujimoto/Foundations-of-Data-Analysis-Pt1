library(SDSFoundations)
animaldata <-AnimalData

# Question 1

# 1a. What was the most common way that dogs arrived in the shelter? (as defined by the "Intake.Type" variable)
table(animaldata$Intake.Type)
Ans: Stray

# 1b. What proportion of dogs were brought to the shelter as an owner surrender? 
dog <- animaldata[AnimalData$Animal.Type == "Dog",]
prop.table(table(dog$Intake.Type))
0.278

# 1c. Of the dogs that were brought to the shelter as an owner surrender, how many were returned to their owner?
dog_surrender <- dog[dog$Intake.Type == "Owner Surrender" ,]
table(dog_surrender$Outcome.Type)
2

# 1d. What was the mean number of days that the dogs referenced in Question 1c spent at the shelter before being returned to their owner? (Round to 1 decimal place.)
dog_surrender_rto <- dog[dog$Intake.Type == "Owner Surrender" & dog$Outcome.Type == "Return to Owner",]
mean(dog_surrender_rto$Days.Shelter)
3.5

# 1e. What would be the correct graph type to show the distribution of dog intake 
barplot(table(dog$Intake.Type))
Bar graph

# Question 2

# A professor asked her students to report how much time they spent completing a take-home exam.  The minimum time reported was half an hour, and the maximum was six and a half hours.  She compiled the data into a relative frequency table, shown below.  Note that one value is missing.

Less than 1 hour	20%
At least 1 hour, but less than 2 hours	20%
At least 2 hours, but less than 3 hours	
At least 3 hours, but less than 4 hours	15%
At least 4 hours, but less than 5 hours	15%
At least 5 hours, but less than 6 hours	10%
At least 6 hours, but less than 7 hours	5%

# 2a. A total of 6 students reported that they worked on the take-home exam for 5 hours or longer. What is the total number of students that reported their time?
6/0.15
40

# 2b. How many students spent fewer than 3 hours completing the take-home exam?
40*.55
22

# 2c. If the professor wanted to report the center of this distribution, which measure of center should she use?
Median

# 2d. Which bin includes the value of Q3?
At least 4 hrs, but less than 5 hrs

# Question 3

# Here is a list of ten data values that are sorted from smallest to largest, but five of the data values are missing.  The missing values are represented by A, B, C, D, and E.
# 2     A     3     B     6     C     9     D     15     E
# Using the statistics below, find the missing values for the data set.  
# Mean = 8     Median = 6.5     Mode = 2     Range = 16     IQR = 10
# Hint:  You should not start by using the mean; save that for the end.
A = 2; B = 5; C = 7; D = 13; E = 18

# 3b. Which of the statistics would change if each value in the dataset were increased by 2?
Mean, Median, Mode

# Question 4

# Suppose that hours of sleep per night for single adults between 30 and 40 years of age are normally distributed with a mean of 6.7 hours and a standard deviation of 1.1 hours.  

# 4a. If an adult has a z-score of -1.5, how many hours of sleep does this person get per night? (Report to 2 decimal places.)
6.7 - 1.1*1.5
5.05
# 4b. What proportion of adults sleep longer than 4.5 hours per night? (Report to 3 decimal places.)
.977 (from 2 sd below mean)

# 4c. What proportion of adults sleep between 5.38 and 8.79 hours of sleep? (Report to 3 decimal places.)
.856
