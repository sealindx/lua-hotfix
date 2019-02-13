local mod = {}
x = 10

function getx( )
	return x
end

function mod.foo1( )
	print("foo1", getx())
end

function mod.foo2( )
	print("foo2", getx())
end

return mod
