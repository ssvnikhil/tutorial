g <- ggplot(diamonds, aes(x = carat, y = price))
g + geom_point(aes(color = color)) + facet_wrap(~color)

g + geom_point(aes(color = color)) + facet_grid(cut~clarity)

ggplot(diamonds,aes(x = carat)) + geom_histogram() + facet_wrap(~color)


# Control color and shapes
ggplot(diamonds, aes(x = carat, y = price, color = color, shape = cut, size = depth)) + geom_point()


# Add themes to graphs

require(ggthemes)

g <- ggplot(diamonds, aes(x = carat, y = price, color = color)) + geom_point()
g

g <- g + theme_wsj()

g <- g + theme_economist() + scale_color_economist()

g <- g + theme_tufte()

g <- g + theme_excel() + scale_color_excel()