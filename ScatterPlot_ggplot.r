require(ggplot2)
ggplot(diamonds, aes(x = carat, y = price)) + geom_point()

g <- ggplot(diamonds, aes(x = carat, y =price))
g
g + geom_point()

g + geom_point(aes(color = color)) 

g + geom_point(aes(color = color, shape = clarity))
g + geom_point(aes(color = color, shape = cut))
