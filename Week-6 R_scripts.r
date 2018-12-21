library(SDSFoundations)
world <-WorldBankData

gbr <- world[world$Country.Code=='GBR',]

gbr2000 <- gbr[gbr$year >= 2000 & gbr$year < 2010,]

time = gbr2000$year-2000  # subtracts offset to 

mv = gbr2000$motor.vehicles

plot(time, mv)

expFit(time, mv)

logisticFit(time, mv)

# Produces r^2 values for linear, exp, logistic fit functions
tripleFit(time, mv) 

# Produces extrapolated (predicted) value given x input
expFitPred(time, mv, 12)
logisticFitPred(time, mv, 12)


