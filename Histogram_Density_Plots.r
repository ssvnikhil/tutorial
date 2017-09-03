# Using Histogram to describe the behavior of continuous variable of carat

ggplot(data = diamonds) + geom_histogram(aes(x = carat))
ggplot(data = diamonds) + geom_histogram(aes(x = carat),binwidth = .5)
ggplot(data = diamonds) + geom_histogram(aes(x = carat),binwidth = .1)

# Getting an exact binwidth is required to have an proper understanding of graph.

# Using density which is much sort of continuous variable

ggplot(data = diamonds) + geom_density(aes(x = carat))
ggplot(data = diamonds) + geom_density(aes(x = carat), fill = "grey50")
