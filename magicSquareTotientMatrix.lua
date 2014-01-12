x = {
56,	
30,
	66,
		31,
			35,

69,	45,	28,	64,	5,
46,	51,	22,	51,	46,
5,	64,	28,	45,	69,
35,	31,	66,	30,	56
}
for i, j in ipairs(x) do
	x[i] = string.reverse(tostring(j))
end
print(string.char(unpack(x)))

