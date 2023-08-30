---@meta vector

---@class vector
---@field x number
---@field y number
---@field z number
local vector_mt = {}

---
---Returns the angle vector representing the normal of the vector.
---
---@return vector
---@nodiscard
function vector_mt:angles() end

---
---Converts the angle into a forward vector overwriting the vector's coordinates. Returns itself.
---
---@param angle vector Angle vector component
---@return vector
---@nodiscard
function vector_mt:angles(angle) end

---
---Converts the angle into a forward vector overwriting the vector's coordinates. Returns itself.
---
---@param pitch number Pitch component of the angle
---@param yaw number Yaw component of the angle
---@return vector
---@nodiscard
function vector_mt:angles(pitch, yaw) end

---
---Ceils & overwrites the x, y, and z coordinates of a vector. Returns itself.
---
---@return vector
---@nodiscard
function vector_mt:ceil() end

---
---Returns the vector of the closest point along a ray.
---
---@param ray_begin vector Ray begin position
---@param ray_end vector Ray end position
---@return vector
---@nodiscard
function vector_mt:closest_ray_point(ray_begin, ray_end) end

---
---Returns the cross product of two given vectors.
---
---@param other vector The vector to calculate the cross product with
---@return vector
---@nodiscard
function vector_mt:cross(other) end

---
---Returns the Euclidean distance between the two given vectors.s.
---
---@param other vector The vector to get the distance to
---@return number
---@nodiscard
function vector_mt:dist(other) end

---
---Returns the 2D distance to another vector.
---
---@param other vector The vector to get the distance to
---@return number
---@nodiscard
function vector_mt:dist2d(other) end

---
---Returns the squared 2D distance to another vector.
---
---@param other vector The vector to get the squared distance to
---@return number
---@nodiscard
function vector_mt:dist2dsqr(other) end

---
---Returns the squared Euclidean distance to another vector.
---
---@param other vector The vector to get the squared distance to
---@return number
---@nodiscard
function vector_mt:distsqr(other) end

---
---Returns the distance to a ray.
---
---@param ray_begin vector Ray begin position
---@param ray_direction vector Ray position
---@return number
---@nodiscard
function vector_mt:dist_to_ray(ray_begin, ray_direction) end

---
---Returns the dot product of the two given vectors.
---
---@param other vector The vector to calculate the dot product with
---@return number
---@nodiscard
function vector_mt:dot(other) end

---
---Rounds the x, y, and z coordinates of the vector down to the largest integer that is less than or equal. Returns itself.
---
---@return vector
---@nodiscard
function vector_mt:floor() end

---
---Returns true if the vector is within the given distance to another vector.
---
---@param other vector The vector to calculate the distance to
---@param range number The distance
---@return boolean
---@nodiscard
function vector_mt:in_range(other, range) end

---
---Overwrites the vector's coordinates. Returns itself.
---
---@param x? number New X coordinate
---@param y? number New Y coordinate
---@param z? number New Z coordinate
---@return vector
function vector_mt:init(x, y, z) end

---
---Returns the Euclidean length of the vector.
---
---@return number
---@nodiscard
function vector_mt:length() end

---
---Returns the length of the vector in two dimensions, without the Z axis.
---
---@return number
---@nodiscard
function vector_mt:length2d() end

---
---Returns the squared length of the vectors x and y value.
---
---@return number
---@nodiscard
function vector_mt:length2dsqr() end

---
---Returns the squared length of the vector.
---
---@return number
---@nodiscard
function vector_mt:lengthsqr() end

---
---Returns the linearly interpolated vector between two vectors by the specified weight.
---
---@param other vector
---@param weight number A value between 0 and 1 that indicates the weight of **other**
---@return vector
---@nodiscard
function vector_mt:lerp(other, weight) end

---
---Normalizes the vector and returns the length of the vector.
---
---@return number
---@nodiscard
function vector_mt:normalize() end

---
---Returns a vector with the same direction as the specified vector, but with a length of one.
---
---@return vector
---@nodiscard
function vector_mt:normalized() end

---
---Multiplies the vector by the specified scalar.
---
---@param scalar number The scalar value
---@return vector
---@nodiscard
function vector_mt:scale(scalar) end

---
---Returns a copy of the vector multiplied by the specified scalar.
---
---@param scalar number The scalar value
---@return vector
---@nodiscard
function vector_mt:scaled(scalar) end

---
---Returns the forward vector from itself to another vector.
---
---@param other vector The vector to get the direction to
---@return vector
---@nodiscard
function vector_mt:to(other) end

---
---Returns a vector containing the coordinates where the specified position vector appears on the screen.
---
---@return vector
---@nodiscard
function vector_mt:to_screen() end

---
---Returns the x, y, and z coordinates of the vector. Note that these fields can be accessed by indexing x, y, and z.
---
---@return number x, number y, number z
---@nodiscard
function vector_mt:unpack() end

---
---Returns the right and up vector of a forward vector.
---
---@return vector right, vector up
---@nodiscard
function vector_mt:vectors() end

---
---Creates a new vector object.
---
---@param x? number
---@param y? number
---@param z? number
---@return vector
---@nodiscard
function vector(x, y, z)
end


return vector
