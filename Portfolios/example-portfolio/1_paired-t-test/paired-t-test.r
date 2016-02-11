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

#Run t-test manually 

#Get the data together
x1 <- setosa
x2 <- versicolor

#sample size
n <- length(setosa)

#means and standard deviations
x1bar <- mean(setosa)
x2bar <- mean(versicolor)
s1 <- sd(setosa)
s2 <- sd(versicolor)

#Need dbar for paired test
d <- x1-x2
dbar <- mean(d)
s_d <- sqrt(var(d))

#Calculate test statistic
t <- dbar/(s_d/sqrt(n))
t

#Probability value (two sided case)
degf <- n-1
P <- 2 * pt(t, degf)
P

#Confidence intervals
alpha <- 0.05

#T distribution
c1 <- qt(alpha/2,degf)
c1 <- -c1

#Confidence Intervals
ci_l <- dbar-c1*(s_d/sqrt(n))
ci_u <- dbar+c1*(s_d/sqrt(n))

CI <- c(ci_l, ci_u)
CI

#Run the test using the built in function
t.test(setosa,versicolor,paired=TRUE, conf.level=0.95)
