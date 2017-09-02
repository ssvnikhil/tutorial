# Arrays can take on any arbitrary dimensions

theArray <- array(1:12, dim = c(2,3,2))
theArray

theArray[1, ,] # Displays the first row of [, , 1] and [, , 2] in a transpose manner.

theArray[, , 1] # displays the first element of the array.

theArray[1,1,1]

theArray[2, ,]

theArray[2,2,]
