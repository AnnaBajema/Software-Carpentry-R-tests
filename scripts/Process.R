

#Title: R basics material
#Author: Anna Bajema
#1/10/15
#version: 0.01
#reading data

#read my data file using read.csv
gapminder <- read.csv(file="gapminder-FiveYearData.csv")
getwd()
setwd("data")
ga <- read.table(file="gapminder-FiveYearData.csv", header=TRUE, sep=",")
identical(ga, gapminder)

rm(list = ls())
ls()

# load it from RData
load("gapminder.RData")

gapminder <- read.csv(file="gapminder-FiveYearData.csv")

names(gapminder)

#subset by function using column comparison
Aus <- subset(gapminder, country == "Australia")

#subset by row number
Aus2 <- gapminder[61:72,]
Aus2
Aus == Aus2
Aus_pop <- gapminder[61:72,3]
Aus_pop
Aus_pop2 <- subset(gapminder, country == "Australia", select = "pop")
Aus_pop2
class(Aus_pop2)
