#Prototype to run a dependent 2-group Wilcoxon Signed Rank Test
#Matthew Lundquist
#1/30/2016

#This a non-parametric test is to compare related (paired) samples

#Read in the data
iris <- read.table("iris.txt")

#If I want to compare Sepal.Length between "setosa" and "versicolor" and I don't 

#Subset into two equal-length vectors

setosa <- iris$Sepal.Length[iris$Species == "setosa"]
versicolor <- iris$Sepal.Length[iris$Species == "versicolor"]

#Run the test using the build in function
wilcox.test(setosa,versicolor,paired=TRUE)

#Note the warning, this is explained in 

