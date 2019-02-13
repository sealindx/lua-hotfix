
-- __moudle 指向了 mod 表，也就是在 main.lua 中 hotfix.moudle({{mod, "./new.lua"}}) 的 mod 表
local __moudle

fix("cmd.show", function( )
	print("NEW cmd.show()")
	__moudle.foo2()
end)
