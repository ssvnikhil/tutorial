require(ggplot2)
ggplot(diamonds, aes(y = carat, x = 1)) + geom_boxplot()

ggplot(diamonds, aes(y = carat, x = cut)) + geom_boxplot()

# ggplot using Violin
ggplot(diamonds, aes(y = carat, x = cut)) + geom_violin()

g <- ggplot(diamonds, aes(y = carat, x = cut))
g
g + geom_point() + geom_violin()
g + geom_violin() + geom_point()

# 1st geom goes on bottom and 2nd geom will be on the top

g + geom_jitter() + geom_violin()
