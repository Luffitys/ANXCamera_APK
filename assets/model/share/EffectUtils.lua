-- copy functions
function simpleCopyTable (obj)
    if type(obj) ~= 'table' then return obj end
    local res = {}
    for k, v in pairs(obj) do res[simpleCopyTable(k)] = simpleCopyTable(v) end
    return res
end



