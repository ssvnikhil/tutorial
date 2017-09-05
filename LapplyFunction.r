theList <- list(A = matrix( 1:9, nrow = 3), B = 1:5, C = matrix(1:4, 2), D = 2)
theList

lapply(theList, sum) # lapply returns the values in list

sapply(theList, sum) # sapply return in vectors

theNames <- c("Akhil", "Bob", "Paul")
lapply(theNames, nchar)
