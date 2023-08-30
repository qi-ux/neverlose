---@meta _

---
--- Get script id
---
---@type number
_ID = 0

---
--- Returns `true` if it is a [neverlose marketplace](https://en.neverlose.cc/market/?type=2) script.
---
---@type boolean
_IS_MARKET = false

---
--- Get script name
---
---@type string
_NAME = "Script"

---
--- Logs a message to console in the [neverlose] format.
---
---@param msg any The message
---@param ... any Comma-separated arguments to concatenate with msg.
function print(msg, ...) end

---
--- Logs a message to console in the error format and plays the sound.
---
---@param msg any The message
---@param ... any Comma-separated arguments to concatenate with msg.
function print_error(msg, ...) end

---
--- Logs a message to in-game chat.
---
---@param msg any The message
---@param ... any Comma-separated arguments to concatenate with msg.
function print_chat(msg, ...) end

---
--- Logs a raw message to console.
---
---@param msg any The message
---@param ... any Comma-separated arguments to concatenate with msg.
function print_raw(msg, ...) end

---
--- Logs a message to upper-left console. End the string with \0 to prevent it from adding a newline.
---
---@param msg any The message
---@param ... any Comma-separated arguments to concatenate with msg.
function print_dev(msg, ...) end

---
---Converts time (seconds) to ticks.
---
---@param time number The seconds to convert to ticks.	
---@return number
---@nodiscard
function to_ticks(time) end

---
--- Converts ticks to time. Return value is in seconds.
---
---@param ticks number The number of ticks to convert to time.	
---@return number
---@nodiscard
function to_time(ticks) end
