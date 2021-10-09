# Course: OMSBA 5305
# Purpose: Week 2 Problem Set: Statistics and Time Series
# Date: October 8, 2021
# Author: Andrew Nalundasan

# load libraries
library(readxl)

# read-in the data
USGDP <- read_excel("../02_raw_data/USGDP-1.xlsx")

# make the dataset a time-series
Y <- ts(USGDP_1$GDP, frequency = 4, start = c(2001, 1))

# plot the data
plot(Y)

# log-ify the time-series data
y <- log(Y)

# plot the log of the series
plot(y)

# calculate the growth rate
g1t <- 100 * diff(Y) / stats::lag(Y)

# view results of g1t
g1t

# calculate growth rate of nominal GDP taking the first log-differences (in %)
g2t <- 100 * diff(y)

# plot g2t and compare to g1t
plot(g1t)
plot(g2t)

# view results of g2t
g2t

# calculate statistical information of g2t
mean(g2t)
var(g2t)

# calculate ACF for g2t
acf(g2t, lag.max=4, plot=FALSE)

# plot ACF for g2t
acf(g2t,lag.max=4)

