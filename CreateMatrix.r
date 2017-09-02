A <- matrix(1:10, nrow=5)
A

B <- matrix(21:30, nrow = 5)
C <- matrix(21:40, nrow = 2) # TOtal elements = Rows * Columns;  20 = (2 rows*10 col) 

B
C


nrow(A)
ncol(A)
dim(A)

A
B

A + B
A * B # A[1][1] will be multipled only with B[1][1]. A[2][1] with B[2][1].

# Matrix Multiplication (Also known as Dot operation)
ncol(A)
nrow(B)

# For multiplication ncol(firstObj) == nrow(SecondObj)
t(B)

A %*% t(B) # %*% - symbol for dot operator. 5 * 2 2 *5 = 5 * 5.

A %*% C # 5 * 2  2 * 10 = 5 * 10

colnames(A)
rownames(A)
colnames(A) <- c("Left","Right")
rownames(A) <- c("1st","2nd","3rd","4th","5th")
A

colnames(B) <- c("First","Second")
rownames(B) <- c("One","Two","Three","Four","Five")
B

LETTERS
letters

colnames(C) <- LETTERS[1:10]
rownames(C) <- c("Top","Bottom")
C

t(A) # Row names of A become column names of t(A)

A %*% C # Row names of A and column names of C are displayed.
