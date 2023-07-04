local io = io
local read = io.read
local write = io.write

local getLine = function()
    return read('*l')
end

local KotScript = require('module')

while true do
    write('> ')
    local line = getLine()
    KotScript.processLine(line)
end