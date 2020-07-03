local file = io.open("script.lua", "r")
local script = file:read()
file:close()

--("").char(97) --> a
function gamer(contents)
    local Chars = {}
    local ret = "_={}_[#_+1]=('').char;___=loadstring;____=table.concat;_____={"
for i=1,string.len(contents) do
        Chars[i] = string.byte(contents,i)
    end
    
    for i,v in pairs(Chars) do
        ret = ret.."_[#_]("..v..")"..","
    end
    ret = ret:sub(1,string.len(ret)-1).."}"
    ret = ret.."___(____(_____))()"
    

    return ret
end

print(gamer(script))
