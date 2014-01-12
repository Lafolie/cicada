local primes = {}
local primeIndexed = {}
local result

for line in io.lines("palPrimes.txt") do
	local n, x = line:match("^(%d+)%s(%d+)$")
	n, x = tonumber(n), tonumber(x)
	primes[n] = x
	primeIndexed[x] = x
end

result = io.open("result.txt", "a")
for n, x in ipairs(primes) do
	if primeIndexed[n] then
		result:write(x .. "\n")
	end
end
result:close()