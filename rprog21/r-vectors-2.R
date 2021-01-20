############## LECTURE 2 ##############
##### VECTORS PART 2 #####


##### sequences #####

0:11
seq(from = 10, to = 20, by = 3)
seq(10, 20, 3)
seq(10, 20, 0.5)

##### repetitions #####

rep("Repeat me", 3)
rep(c(0, 1), 4)
rep(c(0, 1), each = 4)

##### unique values and frequencies #####

p <- c(0, 4, 0, 6, 7, 4)
unique(p)
table(p)
prop.table(p)
prop.table(p) * 100

##### detecting NA #####

q <- c(0, 1, NA, NA)
q
is.na(q)
which(is.na(q))
which(q == NA)

##### handling NA #####

mean(q)
mean(q, na.rm = TRUE)
min(q, na.rm = TRUE)
