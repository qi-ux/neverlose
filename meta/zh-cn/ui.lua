---@meta ui

---@class ui_item
local ui_item = {}

---@return any
---@nodiscard
function ui_item:get() end

---@return number
---@nodiscard
function ui_item:id() end

---@return table[]
---@nodiscard
function ui_item:list() end

---@return string
---@nodiscard
function ui_item:type() end

function ui_item:override(value, ...) end

---@return any
---@nodiscard
function ui_item:get_override() end

function ui_item:update(...) end

function ui_item:reset() end

function ui_item:set(value, ...) end

---@overload fun(value: string)
---@return string
---@nodiscard
function ui_item:name(value) end

---@overload fun(value: string)
---@return string
---@nodiscard
function ui_item:tooltip(value) end

---@overload fun(value: boolean)
---@return boolean
---@nodiscard
function ui_item:visibility(value) end

---@overload fun(value: boolean)
---@return boolean
---@nodiscard
function ui_item:disabled(value) end

---@param callback fun(item: ui_item)
---@param force_call? boolean
function ui_item:set_callback(callback, force_call) end

---@param callback fun(item: ui_item)
function ui_item:unset_callback(callback) end

---@param name string
---@param clr? color|color[]
---@return ui_item
function ui_item:color_picker(name, clr) end

---@return ui_group
function ui_item:create() end

---@return ui_group|ui_item
function ui_item:parent() end

---@class ui_group
local ui_group = {}

---@param name string
---@param value? boolean
---@return ui_item
function ui_group:switch(name, value) end

---@param name string
---@param min number
---@param max number
---@param value? number
---@param scale? number
---@param tooltip? string|fun(value): string
---@return ui_item
function ui_group:slider(name, min, max, value, scale, tooltip) end

---@param name string
---@param value string|string[]
---@param ... string|string[]
---@return ui_item
function ui_group:combo(name, value, ...) end

---@param name string
---@param value string|string[]
---@param ... string|string[]
---@return ui_item
function ui_group:selectable(name, value, ...) end

---@param name string
---@param clr? color|color[]
---@return ui_item
function ui_group:color_picker(name, clr) end

---@param name string
---@param callback? fun(item: ui_item)
---@param style? boolean
---@return ui_item
function ui_group:button(name, callback, style) end

---@param name string
---@param value? number
---@return ui_item
function ui_group:hotkey(name, value) end

---@param name string
---@param value string|string[]
---@param ... string|string[]
---@return ui_item
function ui_group:list(name, value, ...) end

---@param name string
---@param value string|string[]
---@param ... string|string[]
---@return ui_item
function ui_group:listable(name, value, ...) end

---@param name string
---@return ui_item
function ui_group:label(name) end

---@param texture image
---@param size? vector
---@param clr? color
---@param mode? string
---@param rounding? number
---@return ui_item
function ui_group:texture(texture, size, clr, mode, rounding) end

---@class uilib
ui = {}

---@overload fun(tab: string, group: string, column?: number): ui_group
---@param group string
---@return ui_group
function ui.create(group) end

---@overload fun(group: string, item: string): ui_group
---@overload fun(category: string, tab: string, sub_tab: string, group: string, item_category: string, item: string): ui_group
---@param category string
---@param tab string
---@param group string
---@param item? string
---@param sub_item? string
---@return ui_group
function ui.create(category, tab, group, item, sub_item) end

---@return number
---@nodiscard
function ui.get_alpha() end

---@class hotkey
---@field name string
---@field mode number
---@field value any
---@field active boolean
---@field reference ui_group
local hotkey

---@return hotkey[]
---@nodiscard
function ui.get_binds() end

---@param name string
---@return string
---@nodiscard
function ui.get_icon(name) end

---@return vector
---@nodiscard
function ui.get_mouse_position() end

---@return vector
---@nodiscard
function ui.get_position() end

---@return vector
---@nodiscard
function ui.get_size() end

---@overload fun(): color[]
---@param name string
---@return color
---@nodiscard
function ui.get_style(name) end

function ui.hitbox_state(...) end

---@overload fun(lang: string, str: string, localized: string)
---@param lang string
---@param str string
---@return string
---@nodiscard
function ui.localize(lang, str) end

---@overload fun(): string, string
---@param name string
---@param icon string
function ui.sidebar(name, icon) end

return ui
