---@meta render

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

---@class image
---@field width number
---@field height number
---@field resolution number
local image_mt = {}

---@alias hitbox 0|1|2|3|4|5|6|7|8|9|11|12|13|14|15|16|17|18|19

---@class render
render = {}

---@param pos_a vector
---@param pos_b vector
---@param amount number
---@param alpha number
---@param round? number
function render.blur(pos_a, pos_b, amount, alpha, round) end

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
---Returns the camera position vector.
---
---@return vector
---@nodiscard
function render.camera_position() end

---@param pos vector
---@param clr color
---@param radius number
---@param start_degrees number
---@param percentage number
function render.circle(pos, clr, radius, start_degrees, percentage) end

---@param pos vector
---@param clr color
---@param radius number
---@param start_degrees number
---@param percentage number
---@param outline? boolean
function render.circle_3d(pos, clr, radius, start_degrees, percentage, outline) end

---@param pos vector
---@param outer color
---@param inner color
---@param radius number
---@param start_degrees number
---@param percentage number
function render.circle_3d_gradient(pos, outer, inner, radius, start_degrees, percentage) end

---@param pos vector
---@param clr color
---@param radius number
---@param start_degrees number
---@param percentage number
---@param thickness? number
function render.circle_3d_outline(pos, clr, radius, start_degrees, percentage, thickness) end

---@param pos vector
---@param outer color
---@param inner color
---@param radius number
---@param start_degrees number
---@param percentage number
function render.circle_gradient(pos, outer, inner, radius, start_degrees, percentage) end

---@param pos vector
---@param clr color
---@param radius number
---@param start_degrees number
---@param percentage number
---@param thickness? number
function render.circle_outline(pos, clr, radius, start_degrees, percentage, thickness) end

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

---
---Returns the DPI scale value.
---
---@param t 1|2 The type of DPI scale to return
---@return number
---@nodiscard
function render.get_scale(t) end

---@param idx number
---@return image
---@nodiscard
function render.get_weapon_icon(idx) end

---@param pos_a vector
---@param pos_b vector
---@param top_left color
---@param top_right color
---@param bottom_left color
---@param bottom_right color
---@param round? number
function render.gradient(pos_a, pos_b, top_left, top_right, bottom_left, bottom_right, round) end

---
---Highlights the specified hitbox / hitboxes.
---
---@param ent entity The player whose hitbox(es) are to be highlighted
---@param hitbox hitbox|hitbox[] Hitbox index (an integer between 0 and 18). A table with hitbox indices can also be used to highlight multiple hitboxes. Pass 19 to highlight every hitbox
---@param clr color The color with which you want to highlight the hitbox(es)
function render.highlight_hitbox(ent, hitbox, clr) end

---@param pos_a vector
---@param pos_b vector
---@param clr color
function render.line(pos_a, pos_b, clr) end

---
---Returns the **font** or nil on failure.
---
---@param name string Font that will be initialized
---@param size number Size of the font
---@param flags? string|"a"|"i"|"b"|"p"|"d"|"u" **a** for anti-aliasing,  **i** for cursive text, and **b** for bold text, o for outlined text, **d** for the drop shadow effect, **u** to enable extra symbol support.
---@return font
---@nodiscard
function render.load_font(name, size, flags) end

---
---Returns the **font** or nil on failure.
---
---@param name string Font that will be initialized
---@param size vector A vector object containing **width**, **height**, and **spacing**
---@param flags? string|"a"|"i"|"b"|"p"|"d"|"u" **a** for anti-aliasing,  **i** for cursive text, and **b** for bold text, o for outlined text, **d** for the drop shadow effect, **u** to enable extra symbol support.
---@return font
---@nodiscard
function render.load_font(name, size, flags) end

---
---Returns the **image** or nil on failure. Supports JPG, PNG, BMP, SVG, and GIF formats.
---
---@param contents string Raw image file contents
---@param size? vector Size of the image
---@return image?
---@nodiscard
function render.load_image(contents, size) end

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
---Returns the **image** or nil on failure.
---
---@param contents string **RGBA** buffer (**HEX** encoded)
---@param size? vector Size of the image
---@return image?
---@nodiscard
function render.load_image_rgba(contents, size) end

---
---Returns the measured size of the text.
---
---@param font font|1|2|3|4 Font object or **1** for Default font, **2** for Small font, or **3** for Console font
---@param flags? "s" Text flags
---@param text string Text that will be measured
---@return vector
---@nodiscard
function render.measure_text(font, flags, text) end

---@param clr color
---@param pos vector
---@param ... vector
function render.poly(clr, pos, ...) end

---@param alpha number
---@param amount number
---@param pos any
---@param ... any
function render.poly_blur(alpha, amount, pos, ...) end

---@param clr color
---@param pos vector
---@param ... vector
function render.poly_line(clr, pos, ...) end

function render.poly_shadow(...) end

function render.pop_clip_rect() end

function render.pop_rotation() end

---@param pos_a vector
---@param pos_b vector
---@param intersect? boolean
function render.push_clip_rect(pos_a, pos_b, intersect) end

---@param degrees number
function render.push_rotation(degrees) end

---@param pos_a vector
---@param pos_b vector
---@param clr color
---@param round? number
---@param clamp? boolean
function render.rect(pos_a, pos_b, clr, round, clamp) end

---@param pos_a vector
---@param pos_b vector
---@param clr color
---@param thickness number
---@param round? number
---@param clamp? boolean
function render.rect_outline(pos_a, pos_b, clr, thickness, round, clamp) end

---@return vector
---@nodiscard
function render.screen_size() end

---@param pos_a vector
---@param pos_b vector
---@param clr color
---@param thickness? number
---@param offset? number
---@param round? number
function render.shadow(pos_a, pos_b, clr, thickness, offset, round) end

function render.shadow_triangle(...) end

---@param font font|1|2|3|4
---@param pos vector
---@param clr color
---@param flags "c"|"r"|"s"
---@param ... string
function render.text(font, pos, clr, flags, ...) end

---@param texture image
---@param pos vector
---@param size? vector
---@param clr? color
---@param mode? "f"|"r"
---@param round? number
function render.texture(texture, pos, size, clr, mode, round) end

---
---Returns the screen coordinates of a world position or nil if the world position is not visible on your screen.
---
---@param position vector Position in world space
---@return vector?
---@nodiscard
function render.world_to_screen(position) end

return render
