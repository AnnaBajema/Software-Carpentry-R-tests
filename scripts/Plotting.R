#Title: R basics material
#Author: Anna Bajema
#1/10/15
#version: 0.01

install.packages("ggplot2")
 
#quick example to use ggplot2 package
#funtion to creat a plot is called ggplot
library(ggplot2)

ggplot(data=gapminder, aes(x=lifeExp, y=gdpPercap)) + geom_point()
gapminder=read.csv(file="gapminder-FiveYearData.csv")

setwd("c:/Users/AnnaB/Desktop/r-novice-gapminder-files-master/R fundamentals/data")

#adding colours by continents
ggplot(data=gapminder, aes(x=lifeExpm, y=gdpPercap, color=continent))

ggplot(data=gapminder, aes(x=lifeExp, y=gdpPercap, color=continent)) +geom_point() +ggtitle("Life expectancy vs GDP per capita")+ggsave(file="LifeGDP.png")


ggplot(data=gapminder, aes(x=lifeExp, y=gdpPercap, color=continent)) +geom_point() +ggtitle("Life expectancy vs GDP per capita")+ggsave(file="LifeGDP.pdf")

dev.off()

#multi figure plot
png(file = "plots/continents.png")
ggplot(data=gapminder, aes(x=year, y=lifeExp, color=country))+
  geom_point(aes(color=continent)) + 
  ggtitle("Life expectation by year") +
  facet_grid(.~continent) + theme(legend.position="none")
dev.off()
getwd()
setwd("..")
