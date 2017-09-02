x <- 10:1
x
y <- -4 : 5
y
q <- c("Hockey","Football","Baseball","Curling","Rugby","Lacrosse",
       "Basketball","Tennis","Cricket","Soccer")
theDF <- data.frame(x,y,q)
theDF

theDF <- data.frame(First=x,Second=y,Sport=q)
theDF

class(theDF$Sport)

theDF <- data.frame(First=x,Second=y,Sport=q, stringsAsFactors = FALSE)
theDF

class(theDF$Sport)

nrow(theDF)
ncol(theDF)
dim(theDF)
NROW(theDF)


nrow(x)
length(x)
NROW(x)

# UpperCase functions are safety functions which allows all types of objects.

theDF

rownames(theDF)
rownames(theDF) <- c("One","Two","Three","Four","Five","Six","Seven","Eight","Nine","Ten")
rownames(theDF)

theDF

head(theDF)
head(theDF, n =7)

rownames(theDF) <- NULL

theDF


tail(theDF)
tail(theDF, n =9)

class(theDF)

# Access individual column from DataFrame

theDF$Sport 
theDF[3,2]  # Accessing individual cell

theDF[3,2:3] # Accessing a particular row elements

theDF[c(3,5),2] # 3rd and 5th row of 2nd column elements 

theDF[,3] # Values are displayed in Vector format
theDF[,2:3] # Values are displayed in DataFrame format

class(theDF[,3])
theDF[,3,drop=FALSE] # don't drop into a vector

class(theDF[,3,drop=FALSE])

theDF[2,]
class(theDF[2,])

# Note: To show the values in a vector all the components in it must be of same type.


theDF[2:4,]

theDF[c("First","Sport")]
theDF[c("Sport","First")] # Order is not necessary!
theDF[,"Sport"]
theDF[,"Sport",drop=FALSE] # DataFrame format
theDF["Sport"]

theDF[["Sport"]] # Double square brackets show the values in Vector format.
theDF[["First"]]

# Data Frame can store numeric, character, factor, integer in all data sets.