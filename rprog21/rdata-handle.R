
tree <- read.csv("https://allatambov.github.io/rprog/data/firtree.csv", encoding = "UTF-8")

tree$wish

attach(tree)

head(wish)
summary(expenses)

detach(tree)

head(wish)

tree[, 3]

tree2 <- tree[, 3:5]

tree[, c(3, 5)]

tree[3, 5]

class(tree[3, ])

tree[1:12, 2:4]

colnames(tree)
rownames(tree)

colnames(tree)[1] <- "id"
colnames(tree)

good <- tree[tree$score > 3, ]
tree$score > 3

View(tree[tree$wish == "да", ])

View(tree[tree$expenses > 1500 & tree$score > 4, ])
View(tree[tree$ftype == "сосна Крым" | tree$ftype == "сосна датская", ])

tree <- na.omit(tree)








