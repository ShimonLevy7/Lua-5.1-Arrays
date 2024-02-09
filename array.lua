--- Array
--
-- @param name				name of array to create
-- @param length			length of array
-- @param ruler_function	ruler function that decides the value of the index in the array (will recieves the index)
-- @param start_at			where to start (index) in the array (0, 1 (default), ...)
--
-- @return	the array
--
local function newArray(name, length, ruler_function, start_at)
	_G[name] = { }

	for i = (start_at or 1), length do
		_G[name][i] = (ruler_function(i) or 0)
	end

	return _G[name]
end

--- Examples
newArray('test', 6)
newArray('cake', 7, function(index)
	return math.random(21, 69)
end)
newArray('banner', 6, nil, 0)

print(test[1])
print(cake[2])
print(banner[3])
