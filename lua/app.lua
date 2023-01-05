add = 0
local st = os.clock()
for index = 1, 100000000, 1 do
    add = add + index
end
local ed = os.clock() - st

print("==========================")
print("lua")
print(add)
print(ed)
