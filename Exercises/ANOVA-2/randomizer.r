stream <- read.table("stream.txt", h=T)

#Multiply data points by a random number
stream$X_1 <- stream$X_1 * runif(1, 0.01, 1.5)
stream$X_2 <- stream$X_2 * runif(1, 0.01, 1.5)
stream$X_3 <- stream$X_3 * runif(1, 0.01, 1.5)
stream$X_4 <- stream$X_4 * runif(1, 0.01, 1.5)
stream$X_5 <- stream$X_5 * runif(1, 0.01, 1.5)
stream$X_6 <- stream$X_6 * runif(1, 0.01, 1.5)
stream$X_7 <- stream$X_7 * runif(1, 0.01, 1.5)
stream$X_8 <- stream$X_8 * runif(1, 0.01, 1.5)
stream$X_9 <- stream$X_9 * runif(1, 0.01, 1.5)
stream$X_10 <- stream$X_10 * runif(1, 0.01, 1.5)

write.table(stream, "stream.txt", row.names = FALSE, sep = " ")


