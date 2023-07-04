local KotScript = {}

-- the syntax is yet to be determined

setmetatable(_G, {
    __index = function(t, k)
        if k:match('_.+') then
            return KotScript[k:gsub('_', '')]
        end
    end
})

KotScript.processLine = function(line) end

return KotScript