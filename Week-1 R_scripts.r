mean(bike$time)
table(bike$cyc_freq)

table(bike$gender)

(bike$gender=='F')

fem <- bike[bike$gender=='F', ]
male_dist <- bike$distance[bike$gender=='M']
male_speed <- bike$speed[bike$gender=='M']

table(bike$cyc_freq)

bike[7,'age']
bike$speed[bike$cyc_freq == 'Less than once a month']

students <- bike[bike$student==1,]

table(bike$cyc_freq)
daily_riders <-bike[bike$cyc_freq=='Daily',]
table(student$cyc_freq)
distance <-student$distance
distance
mean(distance)
table(daily_riders$gender)
mean(daily_riders$age)
fem_daily <- daily_riders[daily_riders$gender=='F',]
mean(fem_daily$age)
male_daily <- daily_riders[daily_riders$gender=='M',]
male_daily_30 <- male_daily[male_daily$age >= 30,]
median(male_daily$age)
mean(male_daily$age)