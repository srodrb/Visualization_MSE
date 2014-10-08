# The script works on the current directory
#
# Samuel Rodriguez Bernabeu
# Assignment: lecture 3
# deliver date: 06/10/14
#
#

# Exercise 1: Create a vector x of the values from 1 to 20.
x <- seq(1,20)

# Exercise 2: Create a vector w <- 1 + sqrt(x)/2
w <- 1 + sqrt(x)/2

# Exercise 3: Create a data frame called dummy, with columns x = x and
#             y = x + rnorm(x)*w. To ensure we all get the same values, 
#             set the seed to 0.
set.seed(0)
dummy <- data.frame( x=x, y=x + rnorm(x)*w)
summary(dummy)

# Exercise 4: Create a histogram and a boxplot of y and plot them side-by-side 
#             on the same graphing region. Label the axes accordingly. Save your 
#             results as a Jpeg file.
par(mfrow=c(1,2))
hist( dummy$y, main="Histogram", ylab='Frequency', xlab='Y values')
boxplot( dummy$y, main="Box plot")

# Exercise 5: Plot y versus x using an appropriate plotting command. 
#             Put a title on the graph and labels on the axes.
plot( x ~ y, data=dummy, main="Random numbers", xlab="Indices", ylab="Values")


# Exercise 6: Enter the command fm <- lm(y ~ x, data=dummy) to fit a linear regression 
#             model. Add the estimated regression line to the current plot and 
#             make it the colour blue.
fm <- lm(y ~ x, data=dummy)
abline(coef(fm), lty=5, col="black")

# Exercise 7: Extract the values of the residuals using resids <- resid(fm). 
#             Check that the residuals are normally distributed by creating a Q-Q plot.
resids <- resid(fm)
plot( x ~ y, data=dummy, main="Random numbers", xlab="Indices", ylab="Values")
qqline(resids)

# Exercise 8: The airquality data set in the base library has columns Ozone, Solar.R,
#             Wind, Temp, Month and Day. Plot Ozone against Solar.R for each of THREE 
#             temperature ranges and each of THREE wind ranges. (Hint: Use coplot.)
coplot( Ozone ~ Temp | Wind, data=airquality)

# Exercise 9: Construct a histogram of Wind and overlay the density curve.
hist( airquality$Wind, main="Winds", ylab="Frequency", xlab="Speed [m/s]")
par(new=T)
plot( density( airquality$Wind), xlab=NA, ylab=NA, main=NA, axes=F, col="red")
axis(4)
