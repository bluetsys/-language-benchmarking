import time

st = time.perf_counter()
add = 0 

for index in range(1, 100000000):
    add = add + index
 
en = time.perf_counter() - st

print("==========================")
print("python")
print(add)
print(en)