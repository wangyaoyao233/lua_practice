-- print("Hello Lua\n")

-- local num = 100
-- print(num)



function sayHello()
    print("Hello Lua")
end

sayHello()

function max(a,b)
    if a>b then
        return a
    else
        return b
    end
end

print(max(12,10))

for i = 1, 5, 1 do
    print(i)
end