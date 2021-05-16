-- instance by clone
function clone(tab)
    local tmp = {}
    for key, value in pairs(tab) do
        tmp[key] = value
    end
    return tmp
end

function copy(dist, tab)
    for key, value in pairs(tab) do
        dist[key] = value
    end
end


People = {}
People.sayHi = function (self)
    print("People sya hi:"..self.name)
end

function People.sayHello()
    print("People say hello")
end

People.new = function (name)
    local self = clone(People)
    self.name = name
    return self
end

-- People.sayHi()
-- People.sayHello()

-- local p = clone(People)
-- p.sayHello()

-- local p = People.new("zhang san")
-- p.sayHi(p)
-- p:sayHi()



Man = {}

-- OOP: Inheritance
Man.new = function (name)
    local self = People.new(name)
    copy(self, Man)
    return self
end

-- OOP: Polymorphism
Man.sayHello = function ()
    print("Man say hello")
end

local m = Man.new("li si")
m:sayHi()
m:sayHello()