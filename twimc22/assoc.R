# load data
dat <- read.csv("https://allatambov.github.io/psms/chip_n_dale_new.csv")

# scatterplots
plot(dat$tech, dat$reaction, pch=16)
abline(reg = lm(dat$reaction ~ dat$tech), col = "red")

# Pearson's correlation
cor(dat$tech, dat$reaction)

# one more scatterplot
plot(dat$cheer, dat$grump, pch=16)
plot(dat$cheer, dat$grump, pch=16, ylim=c(0, 105))
abline(reg = lm(dat$grump ~ dat$cheer), col = "red")

# comparing coefficients
cor(dat$cheer, dat$grump)
dat2 <- subset(dat, dat$grump < 105)
cor(dat2$cheer, dat2$grump)

# by formula
sx <- sd(dat2$cheeze)
sy <- sd(dat2$cheer)
cov(dat2$cheeze, dat2$cheer) / (sx * sy)

# testing hypotheses
cor.test(dat2$cheeze, dat2$cheer)
cor.test(dat2$cheeze, dat2$cheer, method = "sp")
