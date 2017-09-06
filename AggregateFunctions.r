require(ggplot2)
data(diamonds)
head(diamonds)

mean(diamonds$price)
mean(diamonds$price, na.rm = TRUE)

aggregate(price ~ cut, diamonds, mean, na.rm = TRUE)
aggregate(price ~ cut + color, diamonds, mean)

aggregate(cbind(price, carat) ~ cut + color, diamonds, mean)
aggregate(cbind(price, carat) ~ cut, diamonds, mean)
