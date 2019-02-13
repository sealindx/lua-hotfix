local mod = {}


local mt = {}
mt.__index = mt


function mod.new( )
	return setmetatable({}, mt)
end


function mt:setname(name)
	self.name = name
end

function mt:getname()
	return self.name
end

return mod
