# Function with one argument

hello.person <- function(name)
{
    print(sprintf("Hello %s", name))
}

hello.person

hello.person("Bob")
hello.person("Nikhil")
hello.person("Sarah")

# FUnction with more than one argument

hello.person <- function(first, last)
{
    print(sprintf("Hello %s %s", first, last))
}


hello.person

hello.person("Nikhil","SSV")
hello.person("Jared", "Lander")
hello.person(last = "Lander", first = "Jared")
hello.person("Lander",first = "Jared")
hello.person(last = "Lander", "Jared")

# Function with default argument

hello.person <- function(first, last = "Doe")
{
    print(sprintf("Hello %s %s", first, last))    
}

hello.person("Jared")
hello.person("Jared","Lander")
hello.person(last = "Lander")
hello.person(first = "Jared")


# While using an extra arguments

hello.person("Jared","Lander","Goodbye") # Error
hello.person("Jared", extra = "Goodbye") # Error


# To get rid of this we have var argument (... argument)

hello.person <- function(first, last = "Doe", ...)
{
    print(sprintf("Hello %s %s", first, last))
}

hello.person("Jared","Lander","Goodbye")
hello.person("Jared", extra = "Goodbye")
