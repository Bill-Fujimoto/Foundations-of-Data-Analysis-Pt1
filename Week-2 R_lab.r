library(SDSFoundations)
animaldata <-AnimalData

#### Analyze the Data ####

# Primary Research Question
# Compare the weight of adult cats and dogs at the shelter.  How typical would it be to find a 13-pound cat?  What about a 13-pound dog?
#   
#   Analysis
# Let's break this question down into the different descriptive statistics that you will need to construct your answer.  Be sure that your R output includes all of the following components. 
# 
# 1. Create a table to show how many adult (at intake) cats and dogs are in the dataset. An animal is considered an adult if it is at least one year of age. 
# Subset data for age >= 1 at intake

# 2. Make a histogram of weight for both adult dogs and cats. 
# 3. Calculate the appropriate measures of center and spread for each distribution.
# 4. Find the z-score for a 13-pound cat.
# 5. Find the quartile for a 13-pound dog.

age1 <- animaldata[animaldata$Age.Intake >= 1,]
table(age1$Animal.Type)
# 1a. How many adult dogs are in the shelter?
226

# 1b. How many adult cats are in the shelter?
56

# 2a. What is the shape of the distribution of weight for adult dogs?
adultdog <- age1[age1$Animal.Type == "Dog",]
hist(adultdog$Weight)
mean(adultdog$Weight)
sd(adultdog$Weight)
median(adultdog$Weight)
fivenum(adultdog$Weight)

positively skewed

# 2b. What is the shape of the distribution of weight for adult cats?
adultcat <- age1[age1$Animal.Type == "Cat",]
hist(adultcat$Weight)
mean(adultcat$Weight)
sd(adultcat$Weight)
median(adultcat$Weight)
fivenum(adultcat$Weight)

approximately normal

# 3a. Which measure of center should be used to describe the average weight of the adult cats?

mean

# 3b. Average adult cat weight in pounds (rounded to one decimal place)
8.6

# 4. What is the standard deviation for the weight of the adult cats? Round to two decimal places.
1.91

# 5. What is the z-score of a 13 pound adult cat? Round to one decimal point.
(13-mean(adultcat$Weight))/sd(adultcat$Weight)
2.2999

# 6. Which of these best describes the location of a 13 pound adult cat in the shelter distribution?
#  More than 2 standard deviations above the mean.

# 7. What proportion of adult cats weigh more than 13 pounds, according to your data? Use the following code to answer this question: 1-pnorm(zcat). Replace "zcat" with your z-score for the cat. Round to three decimal places.
1 - pnorm(2.2999)
0.011

# 8a. What quartile would contain a 13-pound adult dog?
first quartile

# 8b. What percentage of adult dogs in the shelter weigh more than 13 pounds?
Approx 75%
