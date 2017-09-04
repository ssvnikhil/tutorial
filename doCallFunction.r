hello.person <- function(first, last = "Doe", ...)
{
    print(sprintf("Hello %s %s", first, last))
}

hello.person("Jared", "Lander")


# do.call function is very flexible in executing any function 
do.call(hello.person, args = list("Jared","Lander"))
do.call(hello.person, args = list(first = "Jared", last = "Lander"))

do.call("hello.person", args = list(first = "Jared", last = "Lander"))


# In the below function x acts as a vector 
run.this <- function(x, func = mean)
{
    do.call(func, args = list(x))
}

run.this(1:10)
run.this(1:10, mean)
run.this(1:10, sum)
run.this(1:10, sd) # sd means standard deviation
