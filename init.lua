--runing path
package.path = package.path .. ";" .. vim.fn.stdpath("config") .. "/lua/configs/?.lua"
--Plugins mannger
require("lazy-config")
--keyboard mapping
require("mapping")
--support python
-- vim.g.python3_host_prog = "/usr/bin/python3"
