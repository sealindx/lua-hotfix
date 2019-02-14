package.path = package.path .. ";../../?.lua"

--[[
对局部函数测试
当某个局部函数 a() 更新时(更新后叫 a1)，其他调用这个局部函数时，也能获取最新的函数 a1
]]

local hotfix = require "hotfix"
local mod = require "old"

print("------------- before update")
mod.foo1()
mod.foo2()
mod.foo3()

hotfix.module({{mod, "./new.lua"}})

print("------------- after update")
mod.foo1()
mod.foo2()
mod.foo3()
