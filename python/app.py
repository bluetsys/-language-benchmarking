import time

st = time.perf_counter()
add = 0 

for index in range(0, 100000001):
    add = add + index
 
en = time.perf_counter() - st

print("==========================")
print("python 테스트")
print(add)
print(en)