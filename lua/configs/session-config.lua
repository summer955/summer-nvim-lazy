local function TestValue(content, a, b)
	local numA = tonumber(a)
	local numB = tonumber(b)

	if numA and numB then
		local myTable = { numA, numB }
		table.sort(myTable)
		numA = myTable[1]
		numB = myTable[2]
	end

	local inputVaild
	repeat
		local testInput = false
		local success, selectType = pcall(function()
			return tonumber(
				vim.fn.input(content .. "\n" .. "Please enter a number between " .. numA .. " and " .. numB .. ".\n")
			)
		end)
		if not success then
			print("You interrupted the input, and the program has exited ")
			testInput = true
			return false
		end

		if selectType == nil then
			print("\nInvaild input,please try again")
		elseif selectType < numA or selectType > numB then
			print("\nInvaild input,please try again")
		else
			inputVaild = selectType
			testInput = true
		end
	until testInput

	if inputVaild ~= nil then
		return inputVaild
	else
		print("Ivalid return")
		return false
	end
end

--To use this code, you need to install lfs.
--Please execute "apt install luarocks -y" then execute "luarocks install luafilesystem"

local lfs = require("lfs")
function CreateSession()
	--Test if the path'~/mynvim/sessions' exsist
	local home = os.getenv("HOME")
	local path = home .. "/mynvim/sessions"
	local testpath = lfs.attributes(path)
	if not testpath then
		print("'~/mynvim/sessions' directory does not exist. Please create the path and then proceed.")
		return
	end
	--Ceate session
	local session_name = vim.fn.input('"Please enter the name of the session window: ')
	if session_name == "" then
		print("no onput")
		return
	end
	local session_file = "session_" .. session_name .. ".vim"
	print("\n")
	if vim.cmd("Obsession ~/mynvim/sessions/" .. session_file) then
		print("Session saved as " .. session_file)
	else
		print("Error!")
	end
end

vim.cmd("command! CreateSession lua CreateSession()")

--To use this code, you need to install lfs.
--Please execute "apt install luarocks -y" then execute "luarocks install luafilesystem"
function SourceVimSession()
	local user_home = os.getenv("HOME")
	local session_path = user_home .. "/mynvim/sessions/"
	local files = {}

	for file in io.popen('ls "' .. session_path .. '"*.vim'):lines() do
		table.insert(files, file)
	end
	table.sort(files)

	for i, file in ipairs(files) do
		print(i .. ". " .. file)
	end

	local select_file = TestValue("Please select file you need\n", 1, #files)

	if select_file ~= false then
		vim.cmd("source " .. files[select_file])
	end
end
vim.cmd("command! SourceVimSession lua SourceVimSession()")
