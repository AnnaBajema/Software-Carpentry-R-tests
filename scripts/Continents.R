#!/c/Program\ Files/R/R-3.2.2/bin/Rscript
#Title: R plotting continents
#Author: Anna Bajema
#1/10/15
#version: 0.01

#call the package gplot2
#you can check if installed firts with a condiiton before calling
#the package gplot2
library(ggplot2)

#assume you have a data/gapminder .RData, add a condition later
#or read the data from the csv file

gapminder <- read.csv("data/gapminder-FiveYearData.csv")
draw_dot_continent <- function(df){
  p <- ggplot(data=gapminder, aes(x=year, y=lifeExp, color=country))+
    geom_point(aes(color=continent)) + 
    ggtitle("Life expectation by year") +
    facet_grid(.~continent) + theme(legend.position="none")
  print(p)
}

#create funtion to create a png plot
make_pngplot <- function(name){
  png(file=paste(name, ".png",sep=""))
  draw_dot_continent
  dev.off()
}

#how to receive input from the user
arg <- commandArgs(TRUE)
try(make_pngplot(arg[1]))

#Testing gitdif
