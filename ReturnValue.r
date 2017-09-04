# In R language last line is automatically returned.

double.num <- function(x)
{
    x * 2 
}

double.num(3)
double.num(5)


double.num <- function(x)
{
    return(x * 2)
}

double.num(3)
double.num(5)

# The lines present after the return statement are not executed
double.num <- function(x)
{
    return(x * 2)
    print("Hello, World!")
    return(17)
}

double.num(3)
double.num(5)

# Functions can return a individual number, string, vector, data frame and lists.
