package.path = package.path .. ";../../?.lua"

--[[
对全局变量和全局函数测试
如果要更新的全局函数中，存在局部变量或者局部函数，那么有可能会更新失败
要更新的全局函数最好确保用到的上值都是 全局的
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

