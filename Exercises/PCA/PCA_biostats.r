#.r script for running PCA, adapted from MVO 010 from the BAT


#Data input

m <- read.table("T8-5.DAT")
m

#Principal components analysis

?prcomp #Run this if you want to learn more about the percomp() function
pcs <- prcomp(m, retex=TRUE, center = TRUE, scale = FALSE) #scale = FALSE makes sure that the original variables keep their individual scales
pcs #loadings
pcs$x #projection
pcs$center
pcs$scale

#biplot
biplot(pcs, choices = c(1,2), cex = 0.5) #Looking at principal components 1 and 2
biplot(pcs, choices = c(2,3), cex = 0.5) #Looting at principal components 2 and 3
biplot(pcs, choices = c(1,3), cex = 0.5) #looking at principal components 1 and 3

#screeplot
plot(pcs)

#PCA using correlation matrix

#You generally use this if the original variables have different scales
pcs_2 <- prcomp(m, scale = TRUE) #scale = TRUE scales the original variables so they are comparable.

#Doing the same as before
pcs_2
pcs_2$x
pcs_2$center
pcs_2$scale


biplot(pcs_2, choices = c(1,2), cex = 0.5)
#Notice that this biplot looks a bit different from the original biplots
