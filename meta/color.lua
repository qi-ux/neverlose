---@meta color

---@class color
---@field r number
---@field g number
---@field b number
---@field a number
---@operator add(color|number): color
---@operator sub(color|number): color
---@operator mul(color|number): color
---@operator div(color|number): color
---@operator unm(color): color
local color_mt

---
--- Returns the current color with an overridden Alpha color range.
---
---@param alpha number
---@return color
function color_mt:alpha_modulate(alpha) end

---
--- Overwrites the color's ranges using the fraction values. Returns itself.
---
---@overload fun(r: number, g: number, b: number, a?: number): color
---@param v number
---@param a? number
---@return color
function color_mt:as_fraction(v, a) end

---
--- Overwrites the color's ranges converting the HSL to RGBA values. Returns itself.
---
---@param h number
---@param s number
---@param l number
---@param a? number
---@return color
function color_mt:as_hsl(h, s, l, a) end

---
--- Overwrites the color's ranges converting the HSV to RGBA values. Returns itself.
---
---@param h number
---@param s number
---@param v number
---@param a? number
---@return color
function color_mt:as_hsv(h, s, v, a) end

---
--- Overwrites the color's ranges converting the int32 value to RGBA values. Returns itself.
---
---@param v number
---@return color
function color_mt:as_int32(v) end

---
--- Creates and returns a copy of the color object.
---
---@return color
function color_mt:clone() end

---
--- Returns the grayscaled color.
---
---@param value? number
---@return color
function color_mt:grayscale(value) end

---
--- Overwrites the color's ranges. Returns itself.
---
---@overload fun(hex: string): color
---@overload fun(v: number, a?: number): color
---@overload fun(r: number, g: number, b: number, a?: number): color
---@return color
function color_mt:init() end

---
--- Returns the linearly interpolated color between two colors by the specified weight.
---
---@param other color
---@param value number
---@return color
function color_mt:lerp(other, value) end

---
--- Returns the r, g, b, and a ranges of the color as a percentage in the range of [0.0, 1.0].
---
---@return number, number, number, number
function color_mt:to_fraction() end

---
--- Returns the HEX string representing the color.
---
---@return string
function color_mt:to_hex() end

---
--- Returns the HSL representation of the color.
---
---@return number, number, number
function color_mt:to_hsl() end

---
--- Returns the HSV representation of the color.
---
---@return number, number, number
function color_mt:to_hsv() end

---
--- Returns the int32 value representing the color.
---
---@return number
function color_mt:to_int32() end

---
--- Returns the r, g, b, and a values of the color. Note that these fields can be accessed by indexing r, g, b, and a.
---
---@return number, number, number, number
function color_mt:unpack() end

---@overload fun(hex: string): color
---@overload fun(v: number, a?: number): color
---@overload fun(r: number, g: number, b: number, a?: number): color
---@return color
function color() end

return color
