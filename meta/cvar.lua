---@meta cvar

---@class cvar
local cvar_mt = {}

function cvar_mt:call(...) end

---@overload fun(self: cvar, value: number, raw?: boolean)
---@return number
function cvar_mt:int() end

---@overload fun(self: cvar, value: number, raw?: boolean)
---@return number
function cvar_mt:float() end

---@overload fun(self: cvar, value: string)
---@return string
function cvar_mt:string() end

---@param callback fun(self: cvar, ...)|fun(self: cvar, old: any, new: any)
function cvar_mt:set_callback(callback) end

---@param callback fun(self: cvar, ...)|fun(self: cvar, old: any, new: any)
function cvar_mt:unset_callback(callback) end

---@class cvarlib
---@field [string] cvar?
cvar = {}

return cvar
