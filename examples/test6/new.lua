
fix("mt.getname", function(self)
	return self.name .. "_UPDATE"
end)


fix("mt.setname", function(self, name)
	print("update name", name)
	self.name = name
end)

