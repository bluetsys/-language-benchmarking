import time
import sys

st = time.perf_counter()
add = 0 

for index in range(1, 100000001):
    add = add + index
 
en = time.perf_counter() - st

print("==========================")
if( len(sys.argv) > 1):
     print("python - ", sys.argv[1] )
else:
    print("python")
print(add)
print(format(en,'.8f'))
