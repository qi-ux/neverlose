---@meta json


---@class json
json = {}

---@param json_text string
---@return any
function json.parse(json_text) end

---@param value any
---@return string
function json.stringify(value) end

return json
