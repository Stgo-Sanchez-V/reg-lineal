# Simple Linear Regression

# Libraries used en this exercise
library(MASS)
library(ISLR2)

# The ISLR2 library contains the Boston data set, which records median house value for 506 census track in Boston.
# we will seek to predict medv using 12 predictors such as rm (average number of rooms per house), age 
# (average age of houses), and lstat (percent of households with low socioeconomic status)

head(Boston)
attach(Boston)
lm.fit <- lm(medv ~ lstat)
lm.fit
summary(lm.fit)
names(lm.fit)
coef(lm.fit)
confint(lm.fit)
predict(lm.fit, data.frame(lstat = (c(5, 10, 15))), interval = "confidence")
predict(lm.fit, data.frame(lstat = (c(5, 10, 15))), interval = "prediction")

plot(lstat, medv)
abline(lm.fit)     

abline(lm.fit, lwd = 3)    
abline(lm.fit, lwd = 3, col = "red")    
plot(lstat, medv, col = "red")
plot(lstat, medv, pch = "+", col = "red")
plot(1:20, 1:20, pch = 1:20)
par(mfrow = c(2,2))
plot(lm.fit)

plot(predict(lm.fit), residuals(lm.fit))
plot(predict(lm.fit), rstudent(lm.fit))
plot(hatvalues(lm.fit))
which.max(hatvalues(lm.fit))
