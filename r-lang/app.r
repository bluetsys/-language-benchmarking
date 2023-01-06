add <- 0
st <- Sys.time()

for(index in 0:100000000)
{
    add <- add + index;
}

ed <- Sys.time() - st

cat("==========================",fill=TRUE)
cat("R",fill=TRUE)
cat(format(add, scientific = FALSE),fill=TRUE)
cat(ed ,fill=TRUE)
