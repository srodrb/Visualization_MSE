# The script works on the current directory
#
# Samuel Rodriguez Bernabeu
# Assignment: lecture 1
# deliver date: 22/09/14
#
#

rm(list=ls()) # clear the actual workspace

# we create the elasticband dataframe
elasticband <- data.frame( stretch = c(46,54,48,50,44,42,52), distance = c(148,182,173,166,109,141,166))

# exercise 1: create summary statistics for the elastic band data
summary( elasticband )

# exercise 2: create a plot of distance versus stretch
plot( distance ~ stretch , elasticband, main="Distance vs. stretch", xlab="Stretch [N]", ylab="Distance [mm]")

# exercise 3: use help() command to find more information about the hist() command
help( hist )

# exercise 4: create a histogram of the distance using hist()
hist( elasticband$distance, main="Histogram of distance", xlab="Distance [mm]", ylab="Frequency")

# exercise 5: create the dataframe of snow cover data and plot the results 
snow <- data.frame( year=1970:1979, snow.cover=c(6.5,12.0,14.9,10.0,10.7,7.9,21.9,12.5,14.5,9.2))
plot( log(snow.cover) ~ year, snow, main="Snow cover for Eurasia in the years 1970-1979", ylab="log of snow cover", xlab="Year")

# exercise 6: remove the elasticband dataframe
rm( elasticband)

