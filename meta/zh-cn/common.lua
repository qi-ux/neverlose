---@meta common

---@class commonlib
common = {}

---@param text string
---@param icon? string
function common.add_event(text, icon) end

---@param title string
---@param text string
function common.add_notify(title, text) end

function common.force_full_update() end

---@return string[]
---@nodiscard
function common.get_active_scripts() end

---@return string
---@nodiscard
function common.get_config_name() end

---@param format string
---@param unix_time? number
---@return string
---@nodiscard
function common.get_date(format, unix_time) end

---@return string
---@nodiscard
function common.get_game_directory() end

---@class map_data
---@field group string
---@field name string
---@field shortname string
local mapdata

---@return map_data?
---@nodiscard
function common.get_map_data() end

---@return number
---@nodiscard
function common.get_mouse_wheel_delta() end

---@return number
---@nodiscard
function common.get_product_version() end

---@class system_time
---@field day number
---@field hours number
---@field minutes number
---@field month number
---@field seconds number
---@field year number
local system_time

---@return system_time
---@nodiscard
function common.get_system_time() end

---@return number
---@nodiscard
function common.get_timestamp() end

---@return number
---@nodiscard
function common.get_unixtime() end

---@return string
---@nodiscard
function common.get_username() end

---@param key number
---@return boolean
---@nodiscard
function common.is_button_down(key) end

---@param key number
---@return boolean
---@nodiscard
function common.is_button_released(key) end

---@return boolean
---@nodiscard
function common.is_in_thirdperson() end

function common.reload_script() end

---@param clan_tag string
function common.set_clan_tag(clan_tag) end

---@param name string
function common.set_name(name) end

function common.unload_script() end

return common
