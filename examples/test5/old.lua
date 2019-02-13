local mod = {}
local cmd = {}

function cmd.show( )
	print("mod cmd.show()")
end


function mod.foo1()
	cmd.show()
end

function mod.foo2( )
	print("foo2")
end

return mod
