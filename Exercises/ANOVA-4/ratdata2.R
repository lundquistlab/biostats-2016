#read the data
rat <- read.table("rat_data.txt", h=T)
rat

#measurement
is.numeric(rat$data)

#groups
rat$group <- factor(rat$group)

anova(lm(rat$data ~ rat$group))

rat

anova(lm(rat$data ~ rat$group + rat$handler %in% rat$group))
