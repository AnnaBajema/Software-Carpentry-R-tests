#Title: R basics material
#Author: Anna Bajema
#1/10/15
#version: 0.01

#writing a function
CalGDP <- function(dat){ #define funtion name <- function(arbitary parameter name that makes sense for function context)
  GDP <- dat$pop * dat$gdpPercap #the actual equation
  return(GDP)# instructing the funtion to return the result - do not need this, but need it if you want the funtion to provide an output

CalGDP(gapminder)# call to the funtion. Put in brackets what information is needed to run the funtion. This can be a signle digit (as in example on BasicFunctions script) or it can be referenceing to a data set (as used in this function)
#ajsdfhasfhashfashfa
#HELLO NIGEL.... I SEE YOUUUU
#Nigel Added a comment. Yeah!
