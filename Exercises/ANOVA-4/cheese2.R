#read the data
cheese <- read.table("cheesy_data.txt", h=T)
cheese


cheese_stack <- stack(cheese)

colnames(cheese_stack) <- c("hardness", "type")

cheese_stack

expert <- c(1,2,3,4,5,6,7,8,9,10, 1,2,3,4,5,6,7,8,9,10, 1,2,3,4,5,6,7,8,9,10,1,2,3,4,5,6,7,8,9,10)

length(expert)

cheese_full <- cbind(cheese_stack, expert)
cheese_full

cheese_full[,1]

is.factor(cheese_full[,3]) #no! but yes!

anova(lm(cheese_full[,1] ~ cheese_full[,2] * factor(cheese_full[,3])))

MSA <- 8.5343
MSE <- 0.4032

F <- MSA/MSE
F

P <- 1-pf(21.16642,3,27)
P

#Friedman
X <- cheese_full[,1]
g <- cheese_full[,2]
b <- factor(cheese_full[,3])

friedman.test(X,g,b)


#Cochran

#We will not use this
#We have matched data but we do not have replicates within blocks
mantelhaen.test(X,g,b)



cheese_df <- data.frame(cheese_full)
names(cheese_df)
cheese_df$type













