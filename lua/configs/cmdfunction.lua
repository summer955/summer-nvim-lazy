--There is a local function used by the program
--local function#began
--
--This function serves to determine the input, accepting three values.

local vim = vim

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

function SetLinenumber()
	if vim.o.number then
		vim.o.number = 0
	else
		vim.o.number = 1
	end
end

vim.cmd("command! Linenumber lua SetLinenumber()")

--lua Add

function AddLineSymbol()
	--local function
	local function AddNumber()
		local start_line = vim.fn.line("'<")
		local end_line = vim.fn.line("'>")
		local count = 1

		for i = start_line, end_line, 1 do
			local line = vim.fn.getline(i)

			if line ~= "" then
				local new_line = tostring(count) .. "." .. line
				vim.fn.setline(i, new_line)
				count = count + 1
			end
		end

		print("\nexecuted")
	end

	local function interLowercase()
		local start_line = vim.fn.line("'<")
		local end_line = vim.fn.line("'>")
		local lowercase = 97

		for i = start_line, end_line, 1 do
			local line = vim.fn.getline(i)

			if line ~= "" then
				local new_line = string.char(lowercase) .. "." .. line
				vim.fn.setline(i, new_line)
				lowercase = lowercase + 1
				if lowercase > 122 then
					lowercase = 97
				end
			end
		end
	end

	local function interUppercase()
		local start_line = vim.fn.line("'<")
		local end_line = vim.fn.line("'>")
		local uppercase = 65

		for i = start_line, end_line, 1 do
			local line = vim.fn.getline(i)

			if line ~= "" then
				local new_line = string.char(uppercase) .. "." .. line
				vim.fn.setline(i, new_line)
				uppercase = uppercase + 1
				if uppercase > 90 then
					uppercase = 65
				end
			end
		end
	end

	local function CustomCharacter()
		local character = vim.fn.input("please input Character  ")
		local start_line = vim.fn.line("'<")
		local end_line = vim.fn.line("'>")

		for i = start_line, end_line, 1 do
			local line = vim.fn.getline(i)

			if line ~= "" then
				local new_line = character .. "." .. line
				vim.fn.setline(i, new_line)
			end
		end
	end

	local function RemoveLineSymbol()
		vim.api.nvim_command("'<,'>s/^.\\{-}\\.")
		vim.api.nvim_command("noh")
		print("executed\n")
	end

	print(
		"Please enter the content you would like to add at the beginning of each line:\n"
			.. "1. Array sequence\n"
			.. "2. Uppercase letter sequence\n"
			.. "3. Lowercase letter sequence\n"
			.. "4. Custom character sequence\n"
			.. "5.Remove line number at the beginning of the line\n"
	)

	local selectItem = TestValue("", 1, 5)

	if selectItem == 1 then
		AddNumber()
	elseif selectItem == 2 then
		interLowercase()
	elseif selectItem == 3 then
		interUppercase()
	elseif selectItem == 4 then
		CustomCharacter()
	elseif selectItem == 5 then
		RemoveLineSymbol()
	end
end

vim.cmd("command! AddLineSymbol lua AddLineSymbol()")

function ToggleIdentBlankLine()
	if vim.g.indent_blankline_enabled == 1 then
		require("ibl").setup({ enabled = false })
		vim.g.indent_blankline_enabled = 0
		print("Indent-Blankline diabled")
	else
		require("ibl").setup({
			enabled = true,
			indent = { char = "¦" },
			scope = { show_start = false, show_end = false },
			exclude = {
				buftypes = {
					"nofile",
					"terminal",
				},
				filetypes = {
					"help",
					"startify",
					"aerial",
					"alpha",
					"dashboard",
					"lazy",
					"neogitstatus",
					"NvimTree",
					"neo-tree",
					"Trouble",
				},
			},
			main = "ibl",
		})
		vim.g.indent_blankline_enabled = 1
		print("Indent-Blankline enabled")
	end
end
vim.g.indent_blankline_enabled = 1
vim.cmd("command! ToggleIdentBlankLine lua ToggleIdentBlankLine()")
