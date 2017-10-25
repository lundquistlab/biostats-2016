rat <- read.table("rat_data.txt", h=T)
rat

#ANOVA design

Y <- rat$data
X <- factor(rat$group)
X2 <- factor(rat$handler)


anova(lm(Y ~ X*X2))

rat_anova <- anova(lm(Y ~ X + X2%in%X))


par(mfrow=c(2,2))
par(mfrow=c(1,1))
plot(lm(Y ~ X  + X2%in%X))


