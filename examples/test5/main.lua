package.path = package.path .. ";../../?.lua"

--[[
对模块中用到的其他表方法测试
]]

local hotfix = require "hotfix"
local mod = require "old"

print("------------- before update")
mod.foo1()

hotfix.moudle({{mod, "./new.lua"}})

print("------------- after update")
mod.foo1()

