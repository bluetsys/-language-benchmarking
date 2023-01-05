add <- 0
st <- proc.time()

for(index in 0:100000001)
{
    add <- add + index;
}

ed <- proc.time() - st

cat("==========================",fill=TRUE)
cat("R",fill=TRUE)
cat(add,fill=TRUE)
cat(ed,fill=TRUE)