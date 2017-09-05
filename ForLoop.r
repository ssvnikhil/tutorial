for(i in 1:10)
{
    print(i)
}

print(1:10)

# Notice the difference above two examples.


fruit <- c("apple","banana","pomegranate")
length(fruit)

fruitLength <- rep(NA, length(fruit))
fruitLength
names(fruitLength) <- fruit 
fruitLength

for(a in fruit)
{
    fruitLength[a] = nchar(a)
}

fruitLength

# Now doing it in a slightly manner

fruitLength2 <- nchar(fruit)
fruitLength2

names(fruitLength2) <- fruit
fruitLength2

identical(fruitLength, fruitLength2)
