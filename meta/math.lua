---@meta math

---
--- Return `value` bounded by `min` and `max`, inclusive.
---
---@param value number
---@param min number
---@param max number
---@return number
---@nodiscard
function math.clamp(value, min, max) end

---
--- Linearly maps two number ranges and returns the mapped value.
---
---@param value number
---@param in_from number
---@param in_to number
---@param out_from number
---@param out_to number
---@param should_clamp? boolean
---@return number
---@nodiscard
function math.map(value, in_from, in_to, out_from, out_to, should_clamp) end

---
--- Returns the normalized yaw angle value.
---
---@param x number
---@return number
---@nodiscard
function math.normalize_yaw(x) end

return math
