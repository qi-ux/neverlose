---@meta render

---@class render
render = {}


---@return vector
---@nodiscard
function render.screen_size() end

---
---Returns the camera position vector.
---
---@return vector
---@nodiscard
function render.camera_position() end

---
---Returns the camera angles.
---
---@return vector
---@nodiscard
function render.camera_angles() end

---
---Sets the camera angles.
---
---@param angles vector New camera angles
function render.camera_angles(angles) end

---
---Returns the screen coordinates of a world position or nil if the world position is not visible on your screen.
---
---@param position vector Position in world space
---@return vector?
---@nodiscard
function render.world_to_screen(position) end

---
---Returns the **position**, **rotation**, and **is_out_of_fov** arguments or nil on failure.
---
---@param position vector Position in world space
---@param radius number Distance from the center of the screen as a percentage in the range [0.0, ∞]
---@param accurate? boolean If **true** then accurate calculations will be used
---@return vector?, number?, boolean?
---@nodiscard
function render.get_offscreen(position, radius, accurate) end

---
---Returns the color of the specified pixel on the screen.<br>
---**Getting the color of the pixel is a heavy process. Do not do it inside callbacks that are called a lot of times per second.**
---
---@param position vector Screen position
---@return color
---@nodiscard
function render.get_pixel(position) end

---@alias fontflag
---|>"a"    # anti-aliasing.
---| "i"    # cursive text.
---| "b"    # bold text.
---| "o"    # outlined text.
---| "d"    # shadow effect.
---| "u"    # additional symbol support.
---| "s"    # DPI scaled text.

---@class font
---@field width number
---@field height number
---@field spacing number
local font_mt = {}

---
---Sets the new font size.
---
---@param size number New size of the font
function font_mt:set_size(size) end

---
---Sets the new font size.
---
---@param size vector A vector object containing **width**, **height**, and **spacing**
function font_mt:set_size(size) end

---
---Returns the **font** or nil on failure.
---
---@param name string Font that will be initialized
---@param size number Size of the font
---@param flags? fontflag Text flags
---@return font?
---@nodiscard
function render.load_font(name, size, flags) end

---
---Returns the **font** or nil on failure.
---
---@param name string Font that will be initialized
---@param size vector A vector object containing **width**, **height**, and **spacing**
---@param flags? fontflag Text flags
---@return font
---@nodiscard
function render.load_font(name, size, flags) end

---@class image
---@field width number
---@field height number
---@field resolution number
local image_mt = {}

---
---Returns the **image** or nil on failure. Supports JPG, PNG, BMP, SVG, and GIF formats.
---
---@param contents string Raw image file contents
---@param size? vector Size of the image
---@return image?
---@nodiscard
function render.load_image(contents, size) end

---
---Returns the **image** or nil on failure.
---
---@param contents string **RGBA** buffer (**HEX** encoded)
---@param size? vector Size of the image
---@return image?
---@nodiscard
function render.load_image_rgba(contents, size) end

---
---Returns the **image** or nil on failure. Supports JPG, PNG, BMP, SVG, and GIF formats.<br>
---**Loading images from game resources is supported.**
---```lua
---render.load_image_from_file "materials/panorama/images/icons/ui/warning.svg"
---```
---
---@param path string Path to the image
---@param size? vector Size of the image
---@return image?
---@nodiscard
function render.load_image_from_file(path, size) end

---
---Returns the measured size of the text.
---
---@param font font|integer Font object or **1** for Default font, **2** for Small font, or **3** for Console font
---@param flags fontflag Text flags
---@param text string Text that will be measured
---@return vector
---@nodiscard
function render.measure_text(font, flags, text) end

---@alias hitbox 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 11 | 12 | 13 | 14 | 15 | 16 | 17 | 18 | 19

---
---Highlights the specified hitbox / hitboxes.
---
---@param ent entity The player whose hitbox(es) are to be highlighted
---@param hitbox hitbox|hitbox[] Hitbox index (an integer between 0 and 18). A table with hitbox indices can also be used to highlight multiple hitboxes. Pass 19 to highlight every hitbox
---@param clr color The color with which you want to highlight the hitbox(es)
function render.highlight_hitbox(ent, hitbox, clr) end

---@alias scaletype
---|>1  # Menu scale.
---|>2  # ESP scale.

---
---Returns the DPI scale value.
---
---@param t scaletype The type of DPI scale to return
---@return number
---@nodiscard
function render.get_scale(t) end

---
---Creates a region on the screen that blurs everything behind it.
---
---@param pa vector Start position
---@param pb vector End position
---@param strength number Blur strength
---@param alpha number Alpha percentage in the range [0.0, 1.0]
---@param rounding? number Rounding of the blur rectangle in pixels
function render.blur(pa, pb, strength, alpha, rounding) end

return render
