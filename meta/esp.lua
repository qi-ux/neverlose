---@meta esp

---@class esp
esp_mt = {}

---@class esp_group
---@field get fun(): string
---@field set function
---@field name function
---@field create function
local esp_group = {}

---@param name string
---@param preview string
---@param callback fun(ent: entity): string
---@return esp_group
---@nodiscard
function esp_mt:new_text(name, preview, callback) end

---@param name string
---@param callback fun(ent: entity): boolean, number
---@return esp_group
---@nodiscard
function esp_mt:new_bar(name, callback) end

---@param name string
---@return esp_group
---@nodiscard
function esp_mt:new_item(name) end

---@class esplib
---@field enemy esp
---@field team esp
---@field self esp
esp = {}

return esp
