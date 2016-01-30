#Prototype to run a paired t-test
#Matthew Lundquist
#1/30/2016

#This a test is to compare related (paired) samples

#Read in the data
iris <- read.table("iris.txt")

#I want to compare Sepal.Length between "setosa" and "versicolor"

#Subset into two equal-length vectors

setosa <- iris$Sepal.Length[iris$Species == "setosa"]
versicolor <- iris$Sepal.Length[iris$Species == "versicolor"]

#A paired t-test is a parametric test. Must check the assumptions:

#Data vectors are the same length
length(setosa)
length(versicolor)

#Differences between pairs are normally distributed
hist(setosa - versicolor, col="grey")

#Run the test using the build in function
t.test(setosa,versicolor,paired=TRUE, conf.level=0.95)
