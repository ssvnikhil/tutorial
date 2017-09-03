# Scatter plot is simply plot of two variables.
# One along x-axis and other along y-axis.
plot(diamonds$carat, diamonds$price)
plot(price ~ carat, data = diamonds)
plot(price ~ carat, data = diamonds, main = "Price vs Carat")
