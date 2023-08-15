---@meta network

---@class network
network = {}

---@async
---@overload fun(url: string, handler?: string): string
---@param url string
---@param headers? table
---@param callback? fun(content: string)
function network.get(url, headers, callback) end

---@async
---@overload fun(url: string, data?: table, handler?: string): string
---@param url string
---@param data table
---@param headers? table
---@param callback? fun(content: string)
function network.post(url, data, headers, callback) end

return network
