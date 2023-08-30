---@meta rage

---@class antiaim
local antiaim = {}

---
---Returns the maximum amount of desync.
---
---@return number
---@nodiscard
function antiaim:get_max_desync() end

---
---Returns the current anti-aim rotation.
---
---@param value? boolean If `true`, fake rotation will be returned
---@return number
---@nodiscard
function antiaim:get_rotation(value) end

---
---Returns the at target yaw rotation or nil if not available.
---
---@param return_fr? boolean If `true`, freestanding yaw will be returned
---@return number?
---@nodiscard
function antiaim:get_target(return_fr) end

---
---Gets or sets the state of the anti-aim inverter.
---
---@param value? boolean Inverter state
---@return boolean
---@nodiscard
function antiaim:inverter(value) end

---
---Overrides the hidden pitch to the desired value.
---
---@param value boolean Hidden pitch value
---@return number
---@nodiscard
function antiaim:override_hidden_pitch(value) end

---
---Overrides the hidden yaw offset to the desired value.
---
---@param value boolean Hidden yaw offset value
---@return number
---@nodiscard
function antiaim:override_hidden_yaw_offset(value) end

---@class exploit
local exploit = {}

---
---Returns the exploit charge as a unit interval (value in the range [0, 1]).
---
---@return number
---@nodiscard
function exploit:get_max_desync() end

---
---Allows/blocks exploit charge.
---
---@param value? boolean If `true`, allows exploit charge. If `false`, blocks exploit charge. Defaults to `true`
---@return number
---@nodiscard
function exploit:allow_charge(value) end

---
---Allows/blocks defensive exploit discharge.
---
---@param value? boolean If `true`, allows the cheat to discharge defensive exploit. If `false`, blocks defensive exploit discharge. Defaults to `true`
---@return number
---@nodiscard
function exploit:allow_defensive(value) end

---
---
---
function exploit:force_teleport() end

---
---
---
function exploit:force_charge() end

---@class rage
---@field antiaim antiaim
---@field exploit exploit
rage = {}

return rage
