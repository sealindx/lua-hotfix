local mod = {}

local tag = "hello"

local function a( )
	print("call local a function", tag)
end

local function b( )
	print("call local b function", tag)
end


function mod.foo1( )
	a()
end

function mod.foo2( )
	a()
	b()
end

function mod.foo3( )
	a()
end

return mod
