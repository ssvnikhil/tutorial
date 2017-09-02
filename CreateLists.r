list1 <- list(1,2,3)
list1    # Three list elements with each vector element of 1

list2 <- list(c(1,2,3))
list2 # A single list with three vector elements


list3 <- list(c(1,2,3),3:7)
list3 # Two list elements with a vector of 3 elements and another of 5 elements

# Lists using DataFrame concepts
theDF <- data.frame(First = 1:5, Second = 5:1, Sport = c("Hockey","Lacrosse",
                                    "Football","Curling","Tennis"),stringsAsFactors = FALSE)
theDF

list4 <- list(theDF,1:10)
list4

# Using lists as recursive
list5 <- list(theDF, 1:10, list3)
list5

names(list5)
names(list5) <- c("data.frame","vector","list")
names(list5)
list5

# Assigning names while creating a list
list6 <- list(TheDataFrame = theDF, TheVector = 1:10, TheList = list3)
names(list6)
list6

emptyList <- vector(mode = "list", length = 4)
emptyList

emptyList[[1]] <- 5
emptyList

list5[[1]]
names(list5)
list5["data.frame"]

list5[[1]]$Sport
list5[[1]][,"Second"]
list5[[1]][,"Second",drop=FALSE]
length(list5)
NROW(list5)


list5
list5[[4]] <- 2 # Adding 4th element to the list
list5

list5[["NewElement"]] <- 3:7
length(list5)
names(list5) # unnamed is simply "" quoted.
list5
