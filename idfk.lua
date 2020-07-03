local file = io.open("script.lua", "r")
local script = file:read()
file:close()

--("").char(97) --> a
function obfuscate(contents)
    local Chars = {}
    local obfuscatedScript = "_={}_[#_+1]=('').char;___=loadstring;____=table.concat;_____={"
for i=1,string.len(contents) do
        Chars[i] = string.byte(contents,i)
    end
    
    for i,v in pairs(Chars) do
        obfuscatedScript = obfuscatedScript.."_[#_]("..v..")"..","
    end
    obfuscatedScript = obfuscatedScript:sub(1,string.len(obfuscatedScript)-1).."}"
    obfuscatedScript = obfuscatedScript.."___(____(_____))()"
    

    return obfuscatedScript
end

print(obfuscate(script))