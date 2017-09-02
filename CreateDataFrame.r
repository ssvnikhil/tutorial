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
