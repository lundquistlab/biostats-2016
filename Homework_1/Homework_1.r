#Started by Matthew Lundquist
#1/24/2016
#Based on Biostatistics 020 and 030 by William Stein

#This is the first homework assignment for Biol 483N/597

#Due by 11:59 PM 2/1/2016 (Tuesday section) or 2/3/2016 (Thursday section)

#**Note: This is a skeleton script, much more detail is needed to get full 
#credit for this assignment

#**Note: Dr. Stein prefers to use "=" to assign variables, I prefer "<-". 
#While these are both correct, it is easy to confuse "=" with "==" which denotes
#equality. It is up to you to decide which you want to use.
#Be consistent!

#Part one: Inputting data

iris  <- read.table("iris.txt")

#Part two: Descriptive statistics

2 + 2
35/5
6*5
pi

var <-  78
var2 <- 6*(7/9)
var3 <- (5+3)/(sqrt(pi))

SL <- iris[,1]
SL <- iris$Sepal.Length

SW <- iris$Sepal.Width
PL <- iris$Petal.Length
PW <- iris$Petal.Width

species <- iris[,5]

out <- cbind(SL,SW,PL,PW,species)
out

length(SL)
length(iris$Sepal.Width)
length(iris[,3])
length(PW)

n <- length(SL)
n

SL[2]
SL[3]
iris[3,1]

xbar <- (1/n)*sum(SL)
xbar
mean(SL)

median(SL)

geom_meanSL <- prod(SL)^(1/length(SL))
geom_meanSL

harm_meanSL <- n/sum(1/SL)
harm_meanSL

var(SL)
sample_varSL <- ((n-1)/n)*var(SL)
sample_varSL

b1 <- 32
c1 <- 1.8

SLt  <- c1*SL+b1
mean(SLt)
var(SLt)

#Part three: Summary statistics and graphics

summary(iris)

i <- iris[,1:4]
i

variances <- diag(var(i))
variances

sd_i <- sqrt(variances)
sd_i

coefvar  <- sd_i/colMeans(i)
coefvar

#Scatter plots

plot(iris)

plot(iris$Sepal.Length, iris$Sepal.Width, col="red", pch=19)

plot(iris$Sepal.Length, iris$Sepal.Width, pch=19)
points(iris$Sepal.Length[iris$Species=="setosa"], iris$Sepal.Width[iris$Species=="setosa"], col="red", pch=19) 
points(iris$Sepal.Length[iris$Species=="versicolor"], iris$Sepal.Width[iris$Species=="versicolor"], col="blue", pch=19)

#Box plots
plot(iris$Species,iris$Sepal.Length)

library(lattice) 
boxplot(iris)

#Histograms
op <- par(mfrow=c(2, 2)) 

hist(iris$Sepal.Length,col='red') hist(iris$Sepal.Width,col='blue') 
hist(iris$Petal.Length,col='green') hist(iris$Petal.Width,col='purple') 
par(op)

histogram(~ Sepal.Length | Species,data=iris) 
histogram(~ Sepal.Width | Species,data=iris) 
histogram(~ Petal.Length | Species,data=iris) 
histogram(~ Petal.Width | Species,data=iris)
