---@meta color

---@class color
---@field r number
---@field g number
---@field b number
---@field a number
---@field __name string
---@field __type table
---@operator add(color|number): color
---@operator sub(color|number): color
---@operator mul(color|number): color
---@operator div(color|number): color
---@operator unm(color): color
local color_mt = {}

---@overload fun(): color
---@overload fun(hex: string): color
---@overload fun(v: number, a?: number): color
---@overload fun(r: number, g: number, b: number, a?: number): color
function color(...) end

---@return string
---@nodiscard
function color_mt:__tostring() end

---@param alpha number
---@return color
---@nodiscard
function color_mt:alpha_modulate(alpha) end

---@overload fun(v: number, a?: number): color
---@overload fun(r: number, g: number, b: number, a?: number): color
function color_mt:as_fraction(...) end

---@param h number
---@param s number
---@param l number
---@param a? number
---@return color
function color_mt:as_hsl(h, s, l, a) end

---@param h number
---@param s number
---@param v number
---@param a? number
---@return color
function color_mt:as_hsv(h, s, v, a) end

---@param v number
---@return color
function color_mt:as_int32(v) end

---@return color
---@nodiscard
function color_mt:clone() end

---@param value? number
---@return color
---@nodiscard
function color_mt:grayscale(value) end

---@overload fun(): color
---@overload fun(hex: string): color
---@overload fun(v: number, a?: number): color
---@overload fun(r: number, g: number, b: number, a?: number): color
function color_mt:init() end

---@param other color
---@param value number
---@nodiscard
function color_mt:lerp(other, value) end

---@return number, number, number, number
---@nodiscard
function color_mt:to_fraction() end

---@return string
---@nodiscard
function color_mt:to_hex() end

---@return number, number, number
---@nodiscard
function color_mt:to_hsl() end

---@return number, number, number
---@nodiscard
function color_mt:to_hsv() end

---@return number
---@nodiscard
function color_mt:to_int32() end

---@return number, number, number, number
---@nodiscard
function color_mt:unpack() end

return color
