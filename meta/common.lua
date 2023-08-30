---@meta common

---@class mapdata
---@field group string
---@field name string
---@field shortname string

---@class systemtime
---@field day number
---@field hours number
---@field minutes number
---@field month number
---@field seconds number
---@field year number

---@class commonlib
common = {}

---
--- Prints the text into the upper-left neverlose event panel.
---
---@param text string
---@param icon? string
function common.add_event(text, icon) end

---
--- Draws the notification.
---
---@param title string
---@param text string
function common.add_notify(title, text) end

---
--- Forces the server to send a full update packet.
---
function common.force_full_update() end

---
--- Get current active scripts.
---
---@return string[]
function common.get_active_scripts() end

---
--- Returns the name of the currently loaded config.
---
---@return string
function common.get_config_name() end

---
--- Returns the [formatted](https://devhints.io/datetime) date.
---
---@param f string
---@param unixtime? number
---@return string
function common.get_date(f, unixtime) end

---
--- Returns the path to the game client folder.
---
---@return string
function common.get_game_directory() end

---
--- Returns a table containing the `name`, `shortname`, and `group` values.
---
---@return mapdata?
function common.get_map_data() end

---
---
---
---@return number
function common.get_mouse_wheel_delta() end

---
--- Returns the product version of the game client.
---
---@return number
function common.get_product_version() end

---
--- Returns the windows time as a table containing the `year`, `month`, `day`, `hours`, `minutes`, and `seconds` values.
---
---@return systemtime
function common.get_system_time() end

---
--- Returns high precision timestamp in milliseconds.
---
---@return number
function common.get_timestamp() end

---
--- Returns the number of seconds that have elapsed since the unix epoch (1 January 1970 00:00:00)
---
---@return number
function common.get_unixtime() end

---
--- Returns your [Neverlose](https://neverlose.cc) username.
---
---@return string
function common.get_username() end

---
--- Returns `true` if the button is down, or nil on failure.
---
---@param key number [Virtual-Key Codes](https://learn.microsoft.com/windows/win32/inputdev/virtual-key-codes)
---@return boolean
function common.is_button_down(key) end

---
--- Returns `true` if the button is released, or nil on failure.
---
---@param key number [Virtual-Key Codes](https://learn.microsoft.com/windows/win32/inputdev/virtual-key-codes)
---@return boolean
function common.is_button_released(key) end

---
--- Returns `true` if the camera is in thirdperson.
---
---@return boolean
function common.is_in_thirdperson() end

---
--- Reloads current script.
---
function common.reload_script() end

---
--- Sets your in-game clan tag.
---
---@param clan_tag string
function common.set_clan_tag(clan_tag) end

---
--- Sets your in-game name.
---
---@param name string
function common.set_name(name) end

---
--- Unloads current script.
---
function common.unload_script() end

---
--- Returns the author of the currently config.
---
function common.get_config_author() end

---
--- Returns the author of the currently script.
---
function common.get_script_author() end

return common
