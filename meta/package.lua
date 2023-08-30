---@meta package

---
--- Load a module and return the module's return value (`true` for `nil`). You can also visit the [neverlose marketplace](https://en.neverlose.cc/market/?type=4) library like this
--- ```lua
--- require "neverlose/<id>"
--- ```
---
---@param modname string
---@return unknown
function require(modname) end

return package
