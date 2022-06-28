
function comparetabs(e, t)
    local k = 0
    for i = 1, #e do
        for z = 1, #t do
        if e[i] == t[i] then
          k=k+1
      end
    end
    end
    if k == (#e)^2 then
        return true
    else 
        return false
    end
end
function comparetabintab(e, t)
for i = 1, #e do
    if comparetabs(e[i], t) then
      return true
end
end
return false
end

function getresult(...)
local e = {}
local args = {...}
print(#args)
repeat
    local t = {}
    for i = 1, tonumber(#args) do
        t[i] = args[math.random(1, tonumber(#args))]
    end
    if comparetabintab(e, t) == false then
        table.insert(e, t)
    end
until #e == tonumber(#args)^tonumber(#args)
return e
end
local anothertab = {}
for i,v in pairs(getresult(1,2,3)) do
    for z, r in pairs(v) do
        table.insert(anothertab, r)
        print(z, r)
    end
end
