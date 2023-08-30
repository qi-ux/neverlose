---@meta panorama

---@class panorama
---@field [string] table<string, function>>
panorama = {}

---@param js_code string
---@param panel? string
---@return fun(): unknown
function panorama.loadstring(js_code, panel) end

return panorama
