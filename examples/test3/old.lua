local mod = {}

local tag = "hello"


function mod.foo1( )
	print("foo1 use tag:", tag)
end

function mod.foo2( )
	print("foo2 use tag:", tag)
end


return mod
