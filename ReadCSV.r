# Reading a CSV file into R

tomato <- read.table(file = "http://www.jaredlander.com/data/Tomato%20First.csv", header = TRUE, sep = ",")
head(tomato)
class(tomato$Tomato)
tomato <- read.table(file = "http://www.jaredlander.com/data/Tomato%20First.csv",header = TRUE, sep = ",", stringsAsFactors = FALSE)
class(tomato$Tomato)
head(tomato)

