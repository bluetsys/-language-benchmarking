local add = 0.0
local st = os.clock()
for index = 1, 100000000, 1 do
    add = add + index
end
local ed = os.clock() - st

print("==========================")
print("lua")
print(string.format("%0.17g", add))
print(ed)
