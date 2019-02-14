package.path = package.path .. ";../../?.lua"

--[[
对局部变量测试
当局部变量修改后，其他引用到这个局部变量也会跟着修改，不管这个局部变量是不是引用类型，还是值类型
]]

local hotfix = require "hotfix"
local mod = require "old"

print("------------- before update")
mod.foo1()
mod.foo2()

hotfix.module({{mod, "./new.lua"}})

print("------------- after update")
mod.foo1()
mod.foo2()

