# load data
dat <- read.csv("https://allatambov.github.io/psms/chip-n-dale.csv")

# descriptive statistics
str(dat)
summary(dat)

# delete missing values
dat <- na.omit(dat)

# histograms
hist(dat$cheer, 
     col = "red", 
     border = "yellow",
     main = "Уровень веселости",
     xlab = "Веселость (в % от Дейла)",
     ylab = "Частота")

hist(dat$grump, 
     col = "burlywood1", 
     border = "firebrick",
     main = "Уровень ворчливости",
     xlab = "Ворчливость (в % от Чипа)",
     ylab = "Частота")

# box plots
boxplot(dat$cheeze, 
        col = "yellow", 
        border = "sienna2")

boxplot(dat$tech, 
        col = "plum1")

# choose rows
chip <- subset(dat, dat$assoc == "Chip")

# confidence interval for proportion
Nchip <- nrow(chip)
N <- nrow(dat)

install.packages("DescTools")  # install library
library(DescTools) # refer to it

# 90% confidence interval
ci90 <- BinomCI(Nchip, N, conf.level = 0.90)
ci90 * 100

# 95% confidence interval
ci95 <- BinomCI(Nchip, N, conf.level = 0.95)
ci95

# confidence interval for mean 
mci95 <- MeanCI(dat$reaction)
mci95

mci99 <- MeanCI(dat$reaction, conf.level = 0.99)
mci99

# compare lengths
mci95[3] - mci95[2]
mci99[3] - mci99[2]