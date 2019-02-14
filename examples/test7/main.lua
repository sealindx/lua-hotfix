package.path = package.path .. ";../../?.lua"

--[[
模块更新失败时测试
对于一个模块，或者多个模块更新失败时，能够对本次更新进行撤销，
尽可能减少热更新对生成环境带来的影响
]]

local hotfix = require "hotfix"
local mod = require "old"

print("------------- before update")
mod.foo1()

hotfix.moudle({{mod, "./new.lua"}})

print("------------- after update")
-- 更新失败时，调用的 foo1 还是旧模块中的 foo1，并不会使用新模块中的 foo1
mod.foo1()

