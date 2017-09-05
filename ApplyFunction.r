theMatrix <- matrix(1:9, nrow = 3)
theMatrix

colSums(theMatrix)
apply(theMatrix, MARGIN = 2, sum)

rowSums(theMatrix)
apply(theMatrix, MARGIN = 1, sum)

theMatrix[2,1] <- NA
theMatrix

apply(theMatrix, MARGIN = 2, sum)
apply(theMatrix, MARGIN = 2, sum, na.rm = TRUE)

colSums(theMatrix)
colSums(theMatrix, na.rm = TRUE)


apply(theMatrix, MARGIN = 1, sum)
apply(theMatrix, MARGIN = 1, sum, na.rm = TRUE)

rowSums(theMatrix)
rowSums(theMatrix, na.rm = TRUE)
