---@meta utils

---@alias flow 0|1

---@class serverinfo
---@field rate unknown
---@field name unknown
---@field address unknown
---@field frame_time unknown
---@field deviation unknown

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
---@field get_server_info fun(self: netchannel): serverinfo?
---@field is_valid_packet fun(self: netchannel, flow: flow, frame: number): boolean
---@field get_packet_time fun(self: netchannel, flow: flow, frame: number): number
---@field get_packet_bytes fun(self: netchannel, flow: flow, frame: number, group: number): number
---@field get_packet_response_latency fun(self: netchannel, flow: flow, frame: number): number, number

---@class plane
---@field normal unknown
---@field dist unknown
---@field type unknown
---@field signbits unknown

---@class surface
---@field name unknown
---@field props unknown
---@field flags unknown

---@class trace
---@field start_pos vector
---@field end_pos vector
---@field plane plane
---@field fraction number
---@field contents number
---@field disp_flags number
---@field all_solid boolean
---@field start_solid boolean
---@field fraction_left_solid number
---@field surface surface
---@field hitgroup number
---@field physics_bone number
---@field world_surface_index number
---@field entity entity?
---@field hitbox number
---@field did_hit fun(self: trace)
---@field did_hit_world fun(self: trace)
---@field did_hit_non_world fun(self: trace)
---@field is_visible fun(self: trace)

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
---@return trace
function utils.trace_bullet(ent, from, to, skip) end

---@param from vector
---@param to vector
---@param skip? entity|entity[]|fun(ent: entity, mask: integer): boolean
---@param mask? integer
---@param type? integer
---@return trace
function utils.trace_hull(from, to, skip, mask, type) end

---@param from vector
---@param to vector
---@param skip? entity|entity[]|fun(ent: entity, mask: integer): boolean
---@param mask? integer
---@param type? integer
---@return trace
function utils.trace_line(from, to, skip, mask, type) end

return utils
