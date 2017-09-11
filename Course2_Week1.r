# <- Assignment operator

x <- 1
print(x)

x

msg <- "hello"
msg

x<- # Incomplete Expression
    
# comment line character ' # '
    
x <- 5 # Nothing printed
x # auto-printing occurs

print(x) # exploit printing

# [1] indicates that x is a vector and 5 is the first element

x <- 1:20
x

# : operator is used to create integer sequences.

#   Objects:
#     R has five basic or "atomic" classes of objects
#     1. character
#     2. numeric (real numbers)
#     3. integer
#     4. complex numbers
#     5. logical (True / False)


#    Most basic object is a vector
    
#   A vector can contain objects of the same class 

    # BUT: one exception is a list, which is represented as a
    # vector but can contain objects of different classes

#   Empty vectors can be created with the vector function()
#   It takes two arguments: Type of class, and length 
        
#   Numbers:
#       Numbers in R a generally treated as numeric objects (ie. double precision real numbers)

#       If you explicitly want an integer, you need to specify 'L' Suffix

#       Ex. Entering 1 gives you a numeric object; entering 1L explicitly gives you an integer.

#       There is also a special number Inf which represents infinity; 
#       eg. 1/0 gives Inf can be used in ordinary calculations.  1/Inf gives 0.

#       The value NaN represents an undefined value ("not a number");
#       eg. 0/0 NaN can also be thought of as a missing value.


#     Attributes
#         R objects can have attributes 
#             names, dimnames

#             dimensions (eg. matrices, arrays)

#             class

#             length

#             other user-defined attributes / metadata
             
#         Attributes of an object can be accessed using the attributes() function

#        Creating Vectors
        
#           The c() function can be used to create vectors of objects

#   Using the vector() function

x <- vector("numeric", length = 10)
x


x <- c(0.5, 0.6)
x # Numeric

x <- c(TRUE, FALSE)
x # Logical

x <- c(T, F)
x # Logical

x <- c("a", "b", "c")
x # Character

x <- 9:29
x # Integer

x <- c(1+0i, 2+4i)
x # Complex numbers

# Mixing objects

y <- c(1.7, "a")
class(y) # character

y <- c(TRUE, 2)
class(y) # numeric

y <- c("a", TRUE)
class(y) # character

# Order of coercion: logical < integer < numeric < complex < character < list
# For remembering the above logic (LINCOCL)
# It means logical will be denominated to numeric
# Integer will be converted to character


# When different objects are mixed in a vector, coercion occurs so that every
# element in the vector is of the same class.


# Explicit  Coercion
#     Objects can be explicitly coerced from one class to another using as.* function

x <- 0:6
class(x)

as.numeric(x) # 0 1 2 3 4 5 6

as.logical(x) # F T T T T T T

as.character(x) # "0" "1" "2" "3" "4" "5" "6"

#   Nonsensical Coercion will be NA's

x <- c("a", "b", "c")

as.numeric(x) # NA

as.logical(x) # NA

as.complex(x) # NA

as.integer(x) # NA

#   Matrices
#     Matrices are vectors with a dimension attribute.
#     The attribute is itself an integer vector of length 2 (nrow, ncol)

m <- matrix(nrow = 2, ncol = 3)
m

dim(m) # dimension of matrix m which indicates nrow's, ncol's

attributes(m) # gives details about the attributes present for the matrix m (dimensions)

#    Matrices are constructed column-wise; so entries can be thought of starting 
#    in the "upper left" corner and running down the columns.

m <- matrix(1:6, nrow = 2, ncol = 3)
m

#    Matrices can also be created directly from vectors by adding a dimensional attribute. 
    
m <- 1:10
m

dim(m) <- c(2,5)
m


#   cbinding and rbinding

#   Matrices can be created by column-binding or row-binding with cbind() and rbind()

x <- 1:3
y <- 10:12

cbind(x,y)

rbind(x,y)

#  Lists
#   Lists are special type of vector that can contain elements of different classes.
        
x <- list(1, "a", TRUE, 1+4i)
x

#     Factors
#         Factors are used to represent categorical data. 
#         Factors can be unordered or ordered.
#         One can think of a factor as an integer vector where each integer has a label. 

#     Factors are treated specially by modelling functions like lm() and glm()

#     Using factors with labels is better than using integers because factors are self-describing

#     having a variable that has values "Male" and "Female" is better than a variable that has values 1 and 2.


x <- factor(c("yes", "yes", "no", "yes", "no"))
x # Baseline level is given according to the alphabetical manner

table(x)

unclass(x) # Here yes is given 2 and no as 1

#   The order of the levels can be set using the levels argument to factor().
#   This can be important in linear modelling because the first level is used as the baseline level.

x <- factor(c("yes","yes","no","yes","no"), levels = c("yes", "no"))
x


#    Missing Values
#        Missing values are denoted by NA or NaN for undefined mathematical operations.
        
#        is.na() is used to test objects if they are NA
#        is.nan() is used to test for NaN
        
#        NA values have a class also, there are integer NA, character NA etc.
        
#        A NaN value is also NA but converse is not true.


x <- c(1, 2, NA, 10, 3)
x

is.na(x)

is.nan(x)

x <- c(1, 2, NaN, NA, 4)

is.na(x)
is.nan(x)


#    Data Frames
    
#    Data Frames are used to store tabular data
    
#    They are represented as a special type of list where every element of 
#    the list has to have the same list       
    
#    Each element of the list can be thought of as a column and the length of each element
#    of the list is the number of rows 
    
#    Unlike matrices, data frames can store different classes of objects in each
#    column (just like lists); matrices must have every element be the same class
    
#    Data frames also have a special attribute called row.names()
    
#    Data frames are usually created by calling read.table()or read.csv()

#    Can be converted to a matrix by calling data.matrix()


x <- data.frame(foo = 1:4, bar = c(T,T,F,F))
x

nrow(x)

ncol(x)

data.matrix(x) # Converted into matrix so TRUE -> 1; FALSE -> 0


#    Names
#        R objects can also have names which is useful for writing readable
#        code and self-describing objects


x <- 1:3
names(x)

names(x) <- c("One", "Two", "Three")
names(x)
x

x <- list(a = 1, b = 2, c = 3)
x # a,b and c are the names of the elements


m <- matrix(1:4, nrow = 2, ncol = 2)
dimnames(m) <- list(c("a","b"), c("c","d"))
m






