#Linear contrasts example

#Import data
stream <- read.table("stream.txt", h=T)

#NAs should be dealt with

stream_1 <- data.frame(cbind(stream$month, stream$salinity))
stream_1 <- na.omit(stream_1)


#I am interested in month and conductance
month <- factor(stream_1[,1])
salinity <- stream_1[,2]

#Assign model
FM <- lm(salinity ~ month)
#Run an ANOVA
anova(FM) #Reject Ho, P < 0.05

#Interested in doing linear contrasts

#Means
N <- length(salinity)
k <- nlevels(month)
Xbar <- tapply(salinity, month, mean)

#I am interested if April is different than the other months

#Contrast 
require(gmodels) #Install this if you dont have it

Xbar
C1 <- c(-1, 1/5, 1/5, 1/5, 1/5, 1/5)
fit.contrast(FM, month, C1, conf.int = 0.95)

#I am also interested if April and July are different
C2 <- c(-1, 0, 0, 1, 0, 0)
fit.contrast(FM, month, C2, conf.int = 0.95)

#I can also check it using a pairwise.t.test
pairwise.t.test(salinity, factor(month), p.adj="none", alternative="two.sided")
