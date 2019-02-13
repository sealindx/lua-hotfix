local mod = {}

local tag = "hello"

local function a( )
	print("call local a function", tag)
end

local function b( )
	print("call local b function")
end


function mod.foo1( )
	a()
end

function mod.foo2( )
	b()
end


return mod
