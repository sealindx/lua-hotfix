
-- __module 指向了 mod 表，也就是在 main.lua 中 hotfix.moudle({{mod, "./new.lua"}}) 的 mod 表
local __module

fix("cmd.show", function( )
	print("NEW cmd.show()")
	__module.foo2()
end)
