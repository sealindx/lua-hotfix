package.path = package.path .. ";../../?.lua"

--[[
对模块中的某个函数，也就是表中的某个函数测试
]]

local hotfix = require "hotfix"
local mod = require "old"

print("------------- before update")
mod.foo1()
mod.foo2()

hotfix.moudle({{mod, "./new.lua"}})

print("------------- after update")
mod.foo1()
mod.foo2()

