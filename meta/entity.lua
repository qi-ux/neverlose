---@meta entity

---@class entity
---@field [0] userdata
---@field [string] table[]|entity|any
entity_mt = {}

---@return boolean
---@nodiscard
function entity_mt:is_player() end

---@return boolean
---@nodiscard
function entity_mt:is_weapon() end

---@return boolean
---@nodiscard
function entity_mt:is_dormant() end

---@return boolean
---@nodiscard
function entity_mt:is_bot() end

---@return boolean
---@nodiscard
function entity_mt:is_alive() end

---@return boolean
---@nodiscard
function entity_mt:is_enemy() end

---@return boolean
---@nodiscard
function entity_mt:is_visible() end

---@param to? entity
---@return boolean
---@nodiscard
function entity_mt:is_occluded(to) end

---@return number
---@nodiscard
function entity_mt:get_index() end

---@return string
---@nodiscard
function entity_mt:get_name() end

---@return vector
---@nodiscard
function entity_mt:get_origin() end

---@return vector
---@nodiscard
function entity_mt:get_angles() end

---@class simulation_time
---@field current number
---@field old number
local simulation_time = {}

---@return simulation_time
---@nodiscard
function entity_mt:get_simulation_time() end

---@return string
---@nodiscard
function entity_mt:get_classname() end

---@return number
---@nodiscard
function entity_mt:get_classid() end

---@return table<number, material>
---@nodiscard
function entity_mt:get_materials() end

---@return string
---@nodiscard
function entity_mt:get_model_name() end

---@return number
---@nodiscard
function entity_mt:get_network_state() end

---@class bbox
---@field pos1 vector?
---@field pos2 vector?
---@field alpha number
local bbox = {}

---@return bbox
---@nodiscard
function entity_mt:get_bbox() end

---@class player_info
---@field is_hltv boolean
---@field is_fake_player boolean
---@field steamid number
---@field steamid64 string
---@field userid number
---@field files_downloaded number
local player_info = {}

---@return player_info
---@nodiscard
function entity_mt:get_player_info() end

---@overload fun(self: entity, all: boolean): entity[]
---@return entity
---@nodiscard
function entity_mt:get_player_weapon() end

---@class animation_state
---@field abs_yaw number
---@field abs_yaw_last number
---@field acceleration vector
---@field acceleration_weight number
---@field action_weight_bias_remainder number
---@field adjust_started boolean
---@field aim_matrix_transition number
---@field aim_matrix_transition_delay number
---@field aim_pitch_max number
---@field aim_pitch_min number
---@field aim_yaw_max number
---@field aim_yaw_min number
---@field anim_duck_amount number
---@field animstate_model_version number
---@field cached_model_index number
---@field camera_smooth_height number
---@field crouch_walk_aim userdata
---@field defuse_started boolean
---@field duck_additional number
---@field duration_in_air number
---@field duration_move_weight_is_too_high number
---@field duration_moving number
---@field duration_still number
---@field duration_strafing number
---@field eye_pitch number
---@field eye_position_smooth_lerp number
---@field eye_yaw number
---@field feet_crossed boolean
---@field first_foot_plant_since_init boolean
---@field first_run_since_init boolean
---@field flashed boolean
---@field foot_left userdata
---@field foot_lerp number
---@field foot_right userdata
---@field in_air_smooth_value number
---@field jump_to_fall number
---@field ladder_speed number
---@field ladder_weight number
---@field land_anim_multiplier number
---@field landed_on_ground_this_frame boolean
---@field landing boolean
---@field last_foot_plant_update number
---@field last_rendered_eye_z number
---@field last_time_velocity_over_ten number
---@field last_update_frame number
---@field last_update_increment number
---@field last_update_time number
---@field last_velocity_test_time number
---@field layer_order_preset userdata
---@field left_ground_height number
---@field left_the_ground_this_frame boolean
---@field move_weight number
---@field move_weight_smoothed number
---@field move_yaw number
---@field move_yaw_current_to_ideal number
---@field move_yaw_ideal number
---@field next_twitch_time number
---@field on_ground boolean
---@field on_ladder boolean
---@field plant_anim_started boolean
---@field player entity
---@field player_is_accelerating boolean
---@field pose_param_mappings userdata
---@field position_current vector
---@field position_last vector
---@field previous_move_state number
---@field primary_cycle number
---@field recrouch_weight number
---@field smooth_height_valid boolean
---@field speed_as_portion_of_crouch_top_speed number
---@field speed_as_portion_of_run_top_speed number
---@field speed_as_portion_of_walk_top_speed number
---@field stand_run_aim userdata
---@field stand_walk_aim userdata
---@field static_approach_speed number
---@field step_height_left number
---@field step_height_right number
---@field strafe_change_cycle number
---@field strafe_change_target_weight number
---@field strafe_change_weight number
---@field strafe_change_weight_smooth_fall_off number
---@field strafe_changing boolean
---@field strafe_sequence number
---@field stutter_step number
---@field target_acceleration vector
---@field time_of_last_known_injury number
---@field time_to_align_lower_body number
---@field twitch_anim_started boolean
---@field velocity vector
---@field velocity_last vector
---@field velocity_length_xy number
---@field velocity_length_z number
---@field velocity_normalized vector
---@field velocity_normalized_non_zero vector
---@field walk_run_transition number
---@field walk_to_run_transition_state boolean
---@field weapon entity
---@field weapon_last entity
---@field weapon_last_bone_setup entity
local animation_state = {}

---@return animation_state
---@nodiscard
function entity_mt:get_anim_state() end

---@class animation_overlay
---@field activity number
---@field cycle number
---@field dispatched_dst number
---@field dispatched_src number
---@field dispatched_studio_hdr userdata
---@field invalidate_physics_bits number
---@field layer_animtime number
---@field layer_fade_outtime number
---@field order number
---@field owner entity
---@field playback_rate number
---@field prev_cycle number
---@field sequence number
---@field weight number
---@field weight_delta_rate number
local animation_overlay = {}

---@overload fun(self: entity): animation_overlay[]
---@param idx number
---@return animation_overlay
---@nodiscard
function entity_mt:get_anim_overlay(idx) end

---@return vector
---@nodiscard
function entity_mt:get_eye_position() end

---@param idx number
---@return vector
---@nodiscard
function entity_mt:get_bone_position(idx) end

---@param idx number
---@return vector
---@nodiscard
function entity_mt:get_hitbox_position(idx) end

---@return image
---@nodiscard
function entity_mt:get_steam_avatar() end

---@return string
---@nodiscard
function entity_mt:get_xuid() end

---@return entity
---@nodiscard
function entity_mt:get_resource() end

---@return entity[]
---@nodiscard
function entity_mt:get_spectators() end

---@param icon string
function entity_mt:set_icon(icon) end

---@return number
---@nodiscard
function entity_mt:get_weapon_index() end

---@return image
---@nodiscard
function entity_mt:get_weapon_icon() end

---@class ccsweaponinfo
---@field max_player_speed number
---@field max_player_speed_alt number
---@field attack_move_speed_factor number
---@field spread number
---@field spread_alt number
---@field inaccuracy_crouch number
---@field inaccuracy_crouch_alt number
---@field inaccuracy_stand number
---@field inaccuracy_stand_alt number
---@field inaccuracy_jump_initial number
---@field inaccuracy_jump_apex number
---@field inaccuracy_jump number
---@field inaccuracy_jump_alt number
---@field inaccuracy_land number
---@field inaccuracy_land_alt number
---@field inaccuracy_ladder number
---@field inaccuracy_ladder_alt number
---@field inaccuracy_fire number
---@field inaccuracy_fire_alt number
---@field inaccuracy_move number
---@field inaccuracy_move_alt number
---@field inaccuracy_reload number
---@field recoil_seed number
---@field recoil_angle number
---@field recoil_angle_alt number
---@field recoil_angle_variance number
---@field recoil_angle_variance_alt number
---@field recoil_magnitude number
---@field recoil_magnitude_alt number
---@field recoil_magnitude_variance_alt number
---@field spread_seed number
---@field recovery_time_crouch number
---@field recovery_time_stand number
---@field recovery_time_crouch_final number
---@field recovery_time_stand_final number
---@field recovery_transition_start_bullet number
---@field recovery_transition_end_bullet number
---@field unzoom_after_shot boolean
---@field hide_view_model_zoomed boolean
---@field zoom_level number
---@field zoom_fov userdata
---@field zoom_time userdata
---@field weapon_class string
---@field has_burst_mode boolean
---@field is_revolver boolean
---@field recoil_magnitude_variance number
---@field weapon_name string
---@field weapon_type number
---@field weapon_price number
---@field console_name string
---@field max_clip1 number
---@field max_clip2 number
---@field world_model string
---@field view_model string
---@field dropped_model string
---@field hud_name string
---@field kill_award number
---@field cycle_time number
---@field cycle_time_alt number
---@field time_to_idle number
---@field full_auto boolean
---@field damage number
---@field headshot_multiplier number
---@field armor_ratio number
---@field bullets number
---@field penetration number
---@field range number
---@field range_modifier number
---@field throw_velocity number
---@field has_silencer boolean
local ccsweaponinfo = {}

---@return ccsweaponinfo
---@nodiscard
function entity_mt:get_weapon_info() end

---@return entity
---@nodiscard
function entity_mt:get_weapon_owner() end

---@return number
---@nodiscard
function entity_mt:get_weapon_reload() end

---@return number
---@nodiscard
function entity_mt:get_max_speed() end

---@return number
---@nodiscard
function entity_mt:get_spread() end

---@return number
---@nodiscard
function entity_mt:get_inaccuracy() end

---@class entitylib
entity = {}

---@param idx number
---@param is_uid? boolean
---@return entity?
---@nodiscard
function entity.get(idx, is_uid) end

---@overload fun(class: number|string|nil, dormant: boolean, callback: fun(ent: entity))
---@param class number|string|nil
---@param dormant? boolean
---@return entity[]
---@nodiscard
function entity.get_entities(class, dormant) end

---@return entity?
---@nodiscard
function entity.get_game_rules() end

---@return entity?
---@nodiscard
function entity.get_player_resource() end

---@return entity?
---@nodiscard
function entity.get_local_player() end

---@overload fun(enemies: boolean, dormant: boolean, callback: fun(player: entity))
---@param enemies boolean
---@param dormant? boolean
---@return entity[]
---@nodiscard
function entity.get_players(enemies, dormant) end

---@param hittable? boolean
function entity.get_threat(hittable) end

return entity
