# Author:       Niall McGuinness
# Title:        Labs - Introduction to Linear Regression
# Description:  Illustrating use of cor and lm functions for linear regression 
# Date:         04/2022
# Version:      1.0
# See:          http://htmlpreview.github.io/?https://github.com/andrewpbray/oiLabs-base-R/blob/master/simple_regression/simple_regression.html

download.file("http://www.openintro.org/stat/data/mlb11.RData", destfile = "mlb11.RData")
load("mlb11.RData")

# correlation co-efficient
cor(mlb11$runs, mlb11$at_bats)

# plotting scatterplot
plot(x = mlb11$at_bats, y = mlb11$runs)

# generate linear regression statistics
m1 <- lm(runs ~ at_bats, data = mlb11)

# display key linear model/regression statistics
summary(m1)

plot(mlb11$runs ~ mlb11$at_bats)
abline(m1)

plot(m1$residuals ~ mlb11$at_bats)
abline(h = 0, lty = 3)  # adds a horizontal dashed line at y = 0

hist(m1$residuals)

qqnorm(m1$residuals)
qqline(m1$residuals)  # adds diagonal line to the normal prob plot
