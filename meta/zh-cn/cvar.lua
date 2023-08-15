---@meta cvar

---@class cvar
local cvar_mt = {}

function cvar_mt:call(...) end

---@overload fun(self: cvar, value: number, raw?: boolean)
---@return number
---@nodiscard
function cvar_mt:int() end

---@overload fun(self: cvar, value: number, raw?: boolean)
---@return number
---@nodiscard
function cvar_mt:float() end

---@overload fun(self: cvar, value: string)
---@return string
---@nodiscard
function cvar_mt:string() end

---@param callback fun(object: cvar, ...)|fun(object: cvar, old: any, new: any)
function cvar_mt:set_callback(callback) end

---@param callback fun(object: cvar, ...)|fun(object: cvar, old: any, new: any)
function cvar_mt:unset_callback(callback) end

---@class cvarlib
---@field [string] cvar|nil
cvar = {}

return cvar
