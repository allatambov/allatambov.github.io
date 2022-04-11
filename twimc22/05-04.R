### LOADING DATA ###

hp <- read.csv("https://allatambov.github.io/twimc22/HP.csv", 
              dec = ",", stringsAsFactors = TRUE)
View(hp)

### DESCRIBING NUMERIC DATA ###

str(hp)
summary(hp)

summary(hp$Age)
summary(hp$Wand.length)

### VISULISING NUMERIC DATA ###

hist(hp$Age, col = "purple", xlab = "Age", main = "Histogram of age")
boxplot(hp$Age, col = "purple", ylab = "Age", main = "Boxplot of age")

hist(hp$Wand.length, col = "pink", xlab = "Wand length", 
     main = "Histogram of wand length")

boxplot(hp$Wand.length, col = "pink", ylab = "Wand length", 
        main = "Boxplot of wand length")

### CONFIDENCE INTERVAL FOR PROPORTION ###

summary(hp$House)

install.packages("DescTools")
library(DescTools)

BinomCI(x = 38, n = 140, conf.level = 0.95)
BinomCI(x = 28, n = 140, conf.level = 0.95)
BinomCI(x = 13, n = 140, conf.level = 0.95)
BinomCI(x = 18, n = 140, conf.level = 0.95)

# by hand for Gryffindor

N <- 140
phat <- 38 / N
phat

qhat <- 1 - phat
qhat

z <- qnorm(0.975)
z

phat - z * sqrt(phat * qhat / N)
phat + z * sqrt(phat * qhat / N)
