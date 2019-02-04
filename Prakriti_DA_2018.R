#R   CODE  FOR  PERFORMING  LINEAR  REGRESSION  AND MULTIPLE  LINEAR REGRESSION ON THE TRAINING DATA AND PREDICTING A MODEL FOR THE TEST DATA.

#agtrain.csv    =  Training Data set



jis<-read.csv("agtrain.csv",head=T, sep=",")
jis
options(max.print = 1000000)

kgp1<-lm(`Yield (kg)`~X1,data = agtrain)
kgp1
summary(kgp1)
kgp2<-lm(`Yield (kg)`~X2,data = agtrain)
summary(kgp2)
kgp3<-lm(`Yield (kg)`~X3,data = agtrain)
summary(kgp3)
kgp4<-lm(`Yield (kg)`~X4,data = agtrain)
summary(kgp4)
kgp5<-lm(`Yield (kg)`~`Area(m^2)`,data = agtrain)
summary(kgp5)
View(agtrain) 
head(agtrain)


tail(agtrain)

str(agtrain)

plot(`Yield (kg)`~`Area(m^2)`,data = agtrain)
abline(kgp5)

plot(kgp5$fitted.values,rstandard(kgp5))
abline(h=4,lty=4)
abline(h=-4,lty=4)

identify(kgp5$fitted.values,rstandard(kgp5))

kgpm <-lm(`Yield (kg)~X1+X2,data = agtrain)
summary(kgpm)

rit<-lm(`Yield (kg)`~X1+X2+X4+`Area(m^2)`,data = agtrain)

ritank<-lm(`Yield (kg)`~X1+X2+X3+X4+`Area(m^2)`,data = agtrain)

summary(ritank)
summary(rit)



