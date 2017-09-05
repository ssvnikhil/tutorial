check.bool <- function(x)
{
    if(x == 1)
    {
        print("hello")
    } else
    {
        print("Goodbye")
    }
}

check.bool(1)

check.bool(0)

check.bool(TRUE)

check.bool("k")


check.bool <- function(x)
{
    if(x == 1)
    {
        print("hello")
    } else if(x == 0)
    {
        print("Goodbye")
    } else
    {
        print("Confused")
    }
    
}

check.bool(1)

check.bool(0)

check.bool(2)

check.bool("k")
