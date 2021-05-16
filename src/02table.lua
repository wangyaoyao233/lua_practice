Config = {hello = "hello", world = "world"}
Config.words = "Hello"
Config.num = 100
Config["name"] = "Lua"

print(Config.hello)
print(Config.words)
print(Config["name"])

for key, value in pairs(Config) do
    print(key, value)
end