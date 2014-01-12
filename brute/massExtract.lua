local outguess = "/Applications/Outguess.app/Contents/outguess -r -k \""
local onion = "\"  onion3.jpg extracts/"
for line in io.lines("result.txt") do
	local cmd = outguess .. line .. onion .. line .. ".txt"
	os.execute(cmd)
end