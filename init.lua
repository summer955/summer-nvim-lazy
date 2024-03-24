--runing path
local currentPath = debug.getinfo(1, "S").source:sub(2):match("(.-)[^\\/]+$")
package.path = package.path .. ";" .. currentPath .. "/lua/configs/?.lua"
--Plugins mannger
require("lazy-config")
--keyboard mapping
require("mapping")
--support python
-- vim.g.python3_host_prog = "/usr/bin/python3"
