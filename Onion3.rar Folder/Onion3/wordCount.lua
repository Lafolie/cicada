words = {}
for line in io.lines("cipher.txt") do
	for word in string.gmatch(line, "%a+") do
		words[word] = words[word] and words[word] + 1 or 1
	end
end

file = io.open("wordcount.txt", "a")
for k, v in pairs(words) do
	file:write(k .. " = " .. v .. "\n")
end