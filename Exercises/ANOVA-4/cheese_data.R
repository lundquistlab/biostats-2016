
cheese <- read.table("cheesy_data.txt", h=T)
cheese_stack <- stack(cheese)
cheese_stack
colnames(cheese_stack) <- c("hardness", "type")
cheese_stack

anova(lm(cheese_stack$hardness ~ cheese_stack$type))

anova(lm(hardness ~ type, data = cheese_stack))

plot(lm(hardness ~ type, data = cheese_stack))

kruskal.test(cheese_stack$hardness,cheese_stack$type)

write.table(cheese_stack, "cheese_stack.txt", sep="", row.names=FALSE)

experts <- c(1,2,3,4,5,6,7,8,9,10,1,2,3,4,5,6,7,8,9,10,1,2,3,4,5,6,7,8,9,10,1,2,3,4,5,6,7,8,9,10)
cheese_stack_block <- cbind(cheese_stack, factor(experts))

is.factor(cheese_stack_block[,3])

friedman.test(cheese_stack_block[,1],cheese_stack_block[,2], cheese_stack_block[,3])


