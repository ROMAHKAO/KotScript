local io = io
local read = io.read

local getLine = function()
    return read('*l')
end

local MiniLua = require('mini-lua')

while 1 do
    local line = getLine()
    MiniLua.processLine(line)
end