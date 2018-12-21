
Millionaires = c(86, 18, 22, 141, 26, 207, 368, 228, 20, 11)
State.population = c(35,8,13,64,13,87,193,124,11,6) 

# 2a. What is the correlation between Millionaires and State.Population? (Round to 3 decimal places.)
cor(Millionaires, State.population)
  0.992
  
# 2b. What is the coefficient of determination? (Round to 3 decimal places.)
cor(Millionaires, State.population)^2
  0.985

linFit(State.population, Millionaires)

new_pop = State.population - min(State.population)
linFit(new_pop, Millionaires)

library(SDSFoundations)
wr <- WorldRecords

mens800 = wr[wr$Event == "Mens 800m", ]
linFit(mens800$Year, mens800$Record)

linFit(mens800$Year - min(mens800$Year), mens800$Record)
