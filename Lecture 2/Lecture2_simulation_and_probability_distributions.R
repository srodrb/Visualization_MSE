# The script works on the current directory
#
# Samuel Rodriguez Bernabeu
# Assignment: lecture 2
# deliver date: 29/09/14
#
#


# In order to obtain reproducible results we set the seed before starting. 
# You can use any number...
set.seed(144)

# Exercise 1: Draw a random sample of size 100 from the interval [0,2] which contains 200 values. 
#             Sample without replacement.

# we use sample with the aditional parameter len to specify the number of samples.
random.numbers <- sample( seq(0,2,len=100), size=100, replace=F)
hist ( random.numbers )

help(runif)
random.numbers <- sample( runif( 100, min=0, max=2), size=100, replace=F)
hist ( random.numbers )




# Exercise 2: Use dt to evaluate the density function of the t distribution with 13 degrees 
#             of freedom at 20 values in the range -1 to 1.
density <- dt( x=seq(-1,1,len=20), df=13)
plot( density )

# Exercise 3: Find P[X <= x] = 0.01 for a t distribution with 9 degrees of freedom.
# pt calculates the cumulative distribution function, P( X <= x)
# the function X is the t distribution with 9 degrees of freedom.
# x = 0.01
answer <- pt( 0.01, df=9)
sprintf("Answer %.2f", answer)

# Exercise 4: IQ scores are known to have a normal distribution with mean 100 and 
#             standard deviation 15. What IQ would you have if you were in the 80th 
#             percentile?
mean <- 100
sd <- 15
result <- qnorm( 0.8, 100, 15)
result <- quantile( IQ, 0.8)
sprintf("Answer %.2f", result)

# there is another possibility using a random sample...
x <- rnorm( 10000, 100, 15)
result <- quantile(x, 0.8)
sprintf("Answer %.2f", result)

# another one, sorting the data manually
data.length = 1e6
x <- rnomr( data.length, 100, 15)
x <- sort(x)


# we can check graphically the result: 
plot( IQ, type='l', lty="longdash")
points( x=80, y=result, pch=23)
string = paste( '(', 80 ,',', result,')')
string
text( x=88, y=result, string, offset=0.5, cex=0.6)


# Exercise 5: What IQ would you have if you were in the top 10 percent?
p <- 0.9*(max(IQ) - min(IQ)) + min(IQ)
sprintf("Answer %.2f", p)

# Exercise 6: What is the probability of having an IQ above 142?
answer <- (1 - pnorm(142, mean=mean, sd=sd))
sprintf("Answer %.6f", answer)


# Exercise 7: Set the seed to '0' and create two samples of size 20 from 
#             the standard normal distribution with the same values. Repeat 
#             the process but set the seed to your ID number.
set.seed(0)
set1 <- rnorm(n=20, mean = 100, sd=15)
set2 <- rnorm(n=20, mean = 100, sd=15)

sprintf("First pair of samples")
set1
set2


set.seed(48639158)
set1 <- rnorm(n=20, mean = 100, sd=15)
set2 <- rnorm(n=20, mean = 100, sd=15)

sprintf("Second pair of samples")
set1
set2
