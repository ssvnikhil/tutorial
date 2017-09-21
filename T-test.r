require(reshape2)
data("tips")
head(tips)
unique(tips$sex)
unique(tips$day)


t.test(tips$tip, alternative = "two.sided", mu = 2.5)

require(ggplot2)
randT <- rt(30000, df = NROW(tips) - 1)
tipTTest <- t.test(tips$tip, alternative = "two.sided", mu = 2.5)

ggplot(data.frame(x = randT)) + geom_density(aes(x = x), fill = "grey", color = "grey") +
    geom_vline(xintercept = tipTTest$statistic) + geom_vline(xintercept = mean(randT) + c(-2,2) * sd(randT), linetype = 2)


t.test(tips$tip, alternative = "greater", mu = 2.5)


aggregate(tip ~ sex, data = tips, mean)
aggregate(tip ~ sex, data = tips, var)


shapiro.test(tips$tip)
shapiro.test(tips$tip[tips$sex == "Female"])
shapiro.test(tips$tip[tips$sex == "Male"])


ggplot(tips, aes(x = tip, fill = sex)) + geom_histogram(binwidth = 0.5, alpha = 1/2)


require(plyr)

tipSummary <- ddply(tips, "sex", summarize, tip.mean = mean(tip),
                    tip.sd = sd(tip), Lower = tip.mean - 2*tip.sd/sqrt(NROW(tip)),
                                      Upper = tip.mean + 2*tip.sd/sqrt(NROW(tip)))

tipSummary

ggplot(tipSummary, aes(x = tip.mean, y = sex)) + geom_point() +
    geom_errorbarh(aes(xmin = Lower, xmax = Upper), height = .2)


require(UsingR)
head(father.son)

t.test(father.son$fheight, father.son$sheight, paired = TRUE) # Paired t-test


tipAnova <- aov(tip ~ day -1, tips)
tipIntercept <- aov(tip ~ day, tips)

tipAnova$coefficients
tipIntercept$coefficients # Displays intercept column instead of friday

summary(tipAnova)

tipsByDay <- ddply(tips, "day", summarize,
                   tip.mean = mean(tip), tip.sd = sd(tip),
                   Length = NROW(tip), 
                   tfrac = qt(p = .90, df = Length-1),
                   Lower = tip.mean - tfrac * tip.sd/sqrt(Length),
                   Upper = tip.mean + tfrac * tip.sd/sqrt(Length))

