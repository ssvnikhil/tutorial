# While loop

x <- 1 

while(x <= 5)
{
    print(x)
    x <- x + 1
}

# Next and Break control statements

for(i in 1:10)
{
    if(i == 3)
    {
        next
    }
    print(i)
}
# It skips value 3 and print all the remaining values.

for(i in 1:10)
{
    if(i == 4)
    {
        break
    }
    print(i)
}

# break will terminate the loop at value 3.