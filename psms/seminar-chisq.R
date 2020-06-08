### Titanic data ###

# http://campus.lakeforest.edu/frank/FILES/MLFfiles/Bio150/Titanic/TitanicMETA.pdf

titan <- read.csv("https://allatambov.github.io/psms/titanic.csv")
summary(titan)

table(titan$Survived, titan$Pclass)
chisq.test(titan$Survived, titan$Pclass)

test <- chisq.test(titan$Survived, titan$Pclass)
test$observed
test$expected
test$statistic

(test$observed - test$expected)^2 / test$expected
sum((test$observed - test$expected)^2 / test$expected)

### Chip n Dale data ###

chip <- read.csv("https://allatambov.github.io/psms/chip_n_dale_new.csv")

table(chip$fav, chip$assoc)
chisq.test(chip$fav, chip$assoc)

