x <- 2
x
class(x)
is.numeric(x)

i <- 5L
i
class(i)
is.integer(i)
is.numeric(i)
# Integer is a subset of numeric.

class(4L)
4L*2.8 #Converted into decimals
5L/2L
class(5L/2L)

x <- "data"
x
class(x)

y <- factor("data")
y

# nchar to calculate number of characters.

nchar(x)
nchar("hello")
nchar(3)
nchar(452)

# nchar does not work on factors.
nchar(y)

# Using Date function in R
date1 <- as.Date("2012-06-28")
date1
class(date1)
is.numeric(date1)
as.numeric(date1)

# Using date and time function in R
date2 <- as.POSIXct("2012-06-28 17:42")
date2
class(date2)
as.numeric(date2)

# Using logical function in R
# Logical function has two things. TRUE - 1; FALSE - 0
TRUE
FALSE
TRUE*5
false*0
FALSE*3
k <- TRUE
k
clas(k)
class(k)
is.logical(k)


# Shortcuts in R
T # By default it is True but it can be changed to another value.
T <- 7
T    
class(T)

# Arithmetic Operations
2 == 3
2 != 3
2 < 3
2 <= 3
2 > 3

# Checing Character data
"data" == "stats"
"data" < "stats"
"data" == "stat"
"data" == "data"
"data" < "datb"
