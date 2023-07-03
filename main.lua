local io = io
local read = io.read

local getLine = function()
    return read('*l')
end

local Module = require('module')

while 1 do
    local line = getLine()
    Module.processLine(line)
end