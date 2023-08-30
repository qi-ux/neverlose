---@meta events

---@class events
---@operator call():nil
local events_mt = {}

---@param callback fun(...)
function events_mt:set(callback) end

---@param callback fun(...)
function events_mt:unset(callback) end

---@return any
function events_mt:call(...) end

---@class eventslib
---@field [string] events
---@field render events
---@field render_glow events
---@field override_view events
---@field createmove events
---@field createmove_run events
---@field aim_fire events
---@field aim_ack events
---@field bullet_fire events
---@field console_input events
---@field draw_model events
---@field level_init events
---@field pre_render events
---@field post_render events
---@field net_update_start events
---@field net_update_end events
---@field config_state events
---@field mouse_input events
---@field shutdown events
---@field voice_message events
events = {}

return events
