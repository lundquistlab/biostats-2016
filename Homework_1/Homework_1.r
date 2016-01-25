#Started by Matthew Lundquist
#1/24/2016
#Based on Biostatistics 030 by William Stein

#This is the first homework assignment for Biol 

#**Note: This is a skeleton script, much more detail is needed to get full 
#credit for this assignment


#Part one: Inputting data

#**Note: Dr. Stein prefers to use "=" to assign variables, I prefer "<-". 
#While these are both correct, it is easy to confuse "=" with "==" which denotes
#equality. It is up to you to decide which you want to use.
#Be consistent!

iris  <- read.table("iris.txt")

#Part two: Descriptive statistics

summary(iris)

i <- iris[,1:4]
i

variances <- diag(var(i))
variances

sd_i <- sqrt(variances)
sd_i

#Does this work?
coefvar  <- sd_i/mean(i)
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


#Histograms:
op <- par(mfrow=c(2, 2)) 

hist(iris$Sepal.Length,col='red') hist(iris$Sepal.Width,col='blue') 
hist(iris$Petal.Length,col='green') hist(iris$Petal.Width,col='purple') 
par(op)

histogram(~ Sepal.Length | Species,data=iris) 
histogram(~ Sepal.Width | Species,data=iris) 
histogram(~ Petal.Length | Species,data=iris) 
histogram(~ Petal.Width | Species,data=iris)
