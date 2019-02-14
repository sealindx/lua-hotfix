package.path = package.path .. ";../../?.lua"

--[[
模块多个模块测试
]]

local hotfix = require "hotfix"
local mod = require "old"
local mod2 = require "old2"

print("------------- before update")
mod.foo1()
mod2.foo1()


hotfix.module({
	{mod, "./new.lua"},
	{mod2, "./new2.lua"}
})

print("------------- after update")
-- 更新失败时，调用的 foo1 还是旧模块中的 foo1，并不会使用新模块中的 foo1
mod.foo1()
mod2.foo1()

