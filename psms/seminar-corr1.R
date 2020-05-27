# load data
dat <- read.csv("https://allatambov.github.io/psms/chip_n_dale_new.csv")

# scatter plot
plot(dat$tech, dat$reaction, pch=16)
abline(reg = lm(dat$reaction ~ dat$tech), col = "red")

# Pearson correlation coefficient 
cor(dat$tech, dat$reaction)

# one more scatter plot
plot(dat$cheer, dat$grump, pch=16)
plot(dat$cheer, dat$grump, pch=16, ylim=c(0, 105))
abline(reg = lm(dat$grump ~ dat$cheer), col = "red")

# features
cor(dat$cheer, dat$grump)
dat2 <- subset(dat, dat$grump < 105)
cor(dat2$cheer, dat2$grump)

# by definition
sx <- sd(dat2$cheeze)
sy <- sd(dat2$cheer)
cov(dat2$cheeze, dat2$cheer) / (sx * sy)

# hypothesis about correlation
cor.test(dat2$cheeze, dat2$cheer)
