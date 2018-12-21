library(SDSFoundations)
acl <-AustinCityLimits

#### Reflect on the Question ####

# 1a. The probability that an event will occur, given that a different event has also occurred, is known as:
  conditional probability

# 1b. Which of the following must be true for two events, A and B, to be considered independent?
  P(A)=P(A|B) correct

  # 2. One of the following questions will be answered in this lab by comparing marginal and conditional probabilities. Select the question that should be answered using this method:
    Among male artists, is there an association between winning a Grammy award and the genre of music that you play?

#### Analyze the Data ####
    
#Primary Research Question
# Among male artists, is there an association between winning a Grammy and the genre of music that he plays?
#   Analysis
# Let's break this question down into the different descriptive statistics that you will need to construct your answer.  Be sure that your R output includes all of the following components. 
# 
# 1. Subset the data (males only).
# 2. Create a table to show the marginal distributions for Genre and Grammy.
# 3. Create a contingency table to show the conditional distribution for Genre and Grammy.
# 4. Make a bar chart to better visualize how many artists in each Genre received a Grammy.
# 5. Calculate P(A):  the probability of winning a Grammy.
# 6. Calculate P(A|B): the probability of winning Grammy, given the artist's Genre.
# 7. Interpret what these probabilities tell us about the relationship between Genre and winning a Grammy.

males <- acl[acl$Gender == "M", ]  
genre = table(males$Genre)
grammy = table(males$Grammy)
twoway = table(males$Grammy, males$Genre)

# Make a bar chart to better visualize how many male and female artists played in each genre.
barplot(twoway, beside = T, legend = T)

# Calculate P(A):  the probability of winning a Grammy
prop.table(grammy)

# Calculate P(A|B): the probability of winning Grammy, given the artist's Genre.  
prop.table(twoway, 2)

# Calculate P(A|B): the probability of a genre winning a grammy, given Y/N.
prop.table(twoway, 1)

# 1) How many male artists won a Grammy?
grammy
  35
# 2) How many male artists did not win a Grammy?
  46
# 3) Which genre had the greatest number of Grammy wins?
twoway
  rock/indie/folk

# 4) What is the probability that a randomly selected artist was a Grammy winner? (Report as a proportion rounded to three decimal places)
prop.table(grammy)
  .432

# 5) To determine the probability of winning a Grammy if the artist was a singer-songwriter, you would divide ___2___ by ___7___. (Enter numerical values.)

# 6) To determine the probability that a randomly-selected Grammy winner was a singer-songwriter, you would divide ____2___ by ___35___. (Enter numerical values.)

# What is the probability that a randomly selected male artist from each of the following genres won a Grammy? (Report as proportions rounded to three decimal places.)
prop.table(twoway, 2)
# 7a. Country?
  0.636
# 7b. Jazz?
  0.571
# 7c. Rock/folk/indie?
  0.393
# 7d. Singer-songwriter?
  0.286
# 7e. Our conclusion should be that winning a Grammy _is not_ independent of Genre.

#### Draw Conclusions ####
  
  # There __is__ an association between winning a Grammy and the Genre of music an artist plays. The probability of winning a Grammy, regardless of Genre, is __43.21__%. However, examination of a __contingency__ table containing both Grammy and Genre showed that the __conditional__ probability of winning a Grammy changes by genre. If an artist is in the Country Genre, the conditional probability of winning a Grammy is __63.64__%, while if an artist is in the __Singer-Songwriter__ Genre, the conditional probability of winning a Grammy is 28.6%. Visual examination of the barplot shows the conditional probabilities of winning a Grammy are __not equal__ across Genres.


