---@meta files

---@class files
files = {}

---@param path string
function files.create_folder(path) end

---@param path string
---@return number
---@nodiscard
function files.get_crc32(path) end

---@param path string
---@return number
---@nodiscard
function files.get_size(path) end

---@param path string
---@return string?
---@nodiscard
function files.read(path) end

---@param path string
---@param contents string
---@param binary? boolean
---@return boolean
function files.write(path, contents, binary) end

return files
