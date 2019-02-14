-- 在更新模块中的 新函数要用到旧函数中不存在的上值，要先声明，不要赋值
local tag
local __module --如果新函数 foo2 要用到这个 mod 表，可以用 __module 代替

fix("__module.foo2", function( )
	b()	
	print("TAG:", tag)
	__module.foo1( )
end)
