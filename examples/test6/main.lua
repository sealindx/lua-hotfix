package.path = package.path .. ";../../?.lua"

--[[
关于元表的使用测试
如果要更新的是一个元方法，需要在更新模块中的函数，第一个参数必须写死为self，如果有其他参数，再加上其他参数
]]

local hotfix = require "hotfix"
local mod = require "old"

print("------------- before update")
local obj1 = mod.new()
obj1:setname("gay")

local obj2 = mod.new()
obj2:setname("girl")


print("before name:", obj1:getname(), obj2:getname())

hotfix.moudle({{mod, "./new.lua"}})

print("------------- after update")
obj1:setname("tomer")
print("after name:", obj1:getname(), obj2:getname())
