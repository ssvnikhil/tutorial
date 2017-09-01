# Vectors are arrays in R
x <- c(1,2,3,4,5,6,7,8,9,10)
x

x+3
x*3
x-3
x/4
x^2
sqrt(x)

# Colon operator to get numbers in sequential manner.
1:10
-2:3
10:1
5:-7


# Working with two vectors
x <- 1:10
y <- -5:4
x
y
x + y
x - y 
x * y
x / y
x ^ y


# Length to find number of elements present in it.
length(x)
length(y)
length(x + y)


# Addition is only possible if longer object length is multiple of shorter object length.

x + c(1,2)
x + c(1,2,3)

# Element by element logical comparison
x <= 5
x < y
x > y


x <- 10 : 1
y <- -4 : 5
x<y
any(x<y)
all(x<y)

q <- c("Hockey", "Football", "Curling", "Rugby", "Lacrosse",
       "Basketball", "Tennis", "Cricket", "Soccer")
q

nchar(q)

f <- 7
f

x
x[1] # Displays First element in the vector.
x[1:2]
x[1:4]
x[c(1,4)]
c(One = "a", Two = "b", Last = "r")
w <- 1:3
w
names(w) <- c("a","b","c")
w
q
q2 <- c(q,"Hockey","Lacrosse","Hockey","Waterpolo","Hockey","Lacrosse")
q2
q2Factor <- factor(q2)
q2Factor
as.numeric(q2Factor)

# Dealing with missing values. na - missing value; NULL - absence of a value.
z <- c(1,2,NA,8,3,NA,8)
z
is.na(z)
# na is a special type not a character.

zChar <- c("Hockey", NA, "Lacrosse")
zChar
is.na(zChar)

z <- c(1, NULL, 3)
z
is.null(z)
# Notice NULL does not print its value in output where as NA does.

d <- NULL
d
is.null(d)
