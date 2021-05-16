-- arr = {1,2,3,4,"hello"}

-- for key, value in pairs(arr) do
--     print(key,value)
-- end

arr = {}

for i = 1, 10, 1 do
    table.insert(arr, i, i)
end

for key, value in pairs(arr) do
    print(key, value)
end

print(table.maxn(arr))