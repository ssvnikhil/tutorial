tomato <- read.table(file = "data/Tomato First.csv", header = TRUE, sep = ",", stringsAsFactors = FALSE)
head(tomato)
tomato
save(tomato,file="data/tomato.rdata")
rm(tomato)
tomato
load("data/tomato.rdata")
head(tomato)

n <- 20
r <- 1:10
w <- data.frame(n,r)
w # n value will be repeated to match upto r values.

save(n,r,w,file = "data/multiple.rdata")
rm(n,r,w)
n
r
w
load("data/multiple.rdata")
n
r
w
