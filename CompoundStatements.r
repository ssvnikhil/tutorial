a <- c(1,1,0,1)
b <- c(2,1,0,1)

ifelse(a == 1 & b == 1, "Yes", "No")
ifelse(a == 1 && b == 1, "Yes", "No")

x <- 1
y <- 2

if(x == 1 & y == 2)
{
    print("hello")
}

if(x == 1 | y == 3)
{
    print("hello")
}

if(x == 1 || y == 3)
{
    print("hello")
}

# difference is || saves computational time.

# Time for COmpound statement

ifelse(b == 1, "Hi", ifelse(b == 0, "Hello", "Goodbye"))
