#Title: R basics material
#Author: Anna Bajema
#2/10/15
#version: 0.01

#creating a vector
x <- c(5.4, 6.2, 7.1, 4.8, 7.5)
x
names(x) <-letters[1:5]
x
x[1]
x[1:3]
x[c(1,2,3)]
x[c(1,1,1,1)]

x[6]
x[-1]

x <- c(5.4, 6.2, 7.1, 4.8, 7.5)
x
x[1]
x[c(-1,-5)]

#subseting by name
names(x) == "b"
x
names(x)
which(names(x) == 'b')
x[-which(names(x) == "b")]

x[x>7]

#multiple conditions
# | or
# & and
# ! negative != not equal to
 ?is.na

#subsetting matrices
m <- matrix(rnorm(24), ncol=4, nrow=6)
m
class(m)
m[1]
m[1,2]
m[,]
class(m[,2])

as.matrix(m[,2])
m[1,,drop=FALSE]

m[1,]
class(m[1,,drop=FALSE])
class(m[1,])

ls()
rm(Aus2)
ls()

#List subsetting
xlist <- list(a="Software Carpentry", b=1:10, data=head(gapminder$gdpPercap))
xlist
str(xlist)
xlist[1]
xlist[[1]]
class(xlist[1])
class(xlist$a)
class(xlist[[1]])
xlist[["b"]][2]
xlist$b[2]
#data frame subsetting
ls()
names(gapminder)
head(gapminder)
head(gapminder[3])
head(gapminder["pop"])
?head
head(gapminder)
gapminderyear
dim(subset(gapminder, year == 1957))
?subset
?which
gapminder[which(gapminder$year == "1957"),][c("pop", "year")]

?as.data.frame
                                            