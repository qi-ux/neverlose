---@meta utils

---@class utils
utils = {}

---@param cmd string
---@param ... unknown
function utils.console_exec(cmd, ...) end

---@param modname string
---@param interface string
---@return userdata?
---@nodiscard
function utils.create_interface(modname, interface) end

---@param delay number
---@param callback fun(...)
---@param ... any
function utils.execute_after(delay, callback, ...) end

---@param class string
---@param prop string
---@return number
---@nodiscard
function utils.get_netvar_offset(class, prop) end

---@overload fun(index: number, ct: any, ...: ffi.ctype*): fun(inst: userdata, ...)
---@param modname string
---@param interface string
---@param index number
---@param ct any
---@param ... ffi.ctype*
---@return fun(...)
---@nodiscard
function utils.get_vfunc(modname, interface, index, ct, ...) end

---@alias flow 0 | 1

---@class netchannel
---@field time number
---@field time_connected  number
---@field time_since_last_received number
---@field is_loopback boolean
---@field is_playback boolean
---@field is_timing_out boolean
---@field sequence_nr table<flow, number>
---@field latency table<flow, number>
---@field avg_latency table<flow, number>
---@field loss table<flow, number>
---@field choke table<flow, number>
---@field packets table<flow, number>
---@field data table<flow, number>
---@field total_packets table<flow, number>
---@field total_data table<flow, number>
local netchannel = {}

---@class serverinfo
---@field rate unknown
---@field name unknown
---@field address unknown
---@field frame_time unknown
---@field deviation unknown
local serverinfo

---@return serverinfo?
---@nodiscard
function netchannel:get_server_info() end

---@param flow flow
---@param frame number
---@return boolean
---@nodiscard
function netchannel:is_valid_packet(flow, frame) end

---@param flow flow
---@param frame number
---@return number
---@nodiscard
function netchannel:get_packet_time(flow, frame) end

---@param flow flow
---@param frame number
---@param group number
---@return number
---@nodiscard
function netchannel:get_packet_bytes(flow, frame, group) end

---@param flow flow
---@param frame number
---@return number, number
---@nodiscard
function netchannel:get_packet_response_latency(flow, frame) end

---@return netchannel
---@nodiscard
function utils.net_channel() end

---@param cmd string
---@param ... unknown
function utils.console_exec(cmd, ...) end

---@param modname string
---@param signature string
---@param offset? number
---@return userdata?
---@nodiscard
function utils.opcode_scan(modname, signature, offset) end

---@param min number
---@param max number
---@return number
---@nodiscard
function utils.random_float(min, max) end

---@param min integer
---@param max integer
---@return integer
---@nodiscard
function utils.random_int(min, max) end

---@param seed number
function utils.random_seed(seed) end

---@param ent entity
---@param from vector
---@param to vector
---@param skip? entity|entity[]|fun(ent: entity, mask: integer): boolean
function utils.trace_bullet(ent, from, to, skip) end

---@param ent entity
---@param from vector
---@param to vector
---@param skip? entity|entity[]|fun(ent: entity, mask: integer): boolean
---@param mask? integer
---@param type? integer
function utils.trace_hull(ent, from, to, skip, mask, type) end

---@param ent entity
---@param from vector
---@param to vector
---@param skip? entity|entity[]|fun(ent: entity, mask: integer): boolean
---@param mask? integer
---@param type? integer
function utils.trace_line(ent, from, to, skip, mask, type) end

return utils
