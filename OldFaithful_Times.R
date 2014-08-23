# Data taken from http://www.stat.cmu.edu/~larry/all-of-statistics/=data/faithful.dat
# Eruption amount of time erupting, waiting time between eruptions

setwd("c:/users/brian/Desktop")
a<-read.csv("data.csv")
hist(a$waiting,breaks=20,prob=T)
lines(density(a$waiting))
duration<-a$eruption
waiting<-a$waiting

hist(duration,breaks=20,prob=T)
lines(density(duration))

plot(duration,waiting,xlab="Duration",ylab="Time between eruptions")
lm(waiting ~ duration)$coefficients[2]

abline(lm(waiting ~ duration))
grid()