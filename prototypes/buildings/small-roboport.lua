local hit_effects = require("__base__/prototypes/entity/hit-effects")
local sounds = require("__base__/prototypes/entity/sounds")
local empty_sprite = {
  filename = "__Spaghetorio__/graphics/krastorio/entities/empty.png",
  width = 1,
  height = 1,
  frame_count = 1,
}

data:extend({
  {
    type = "roboport",
    name = "sp-kr-small-roboport",  -- #ForRegEx# - building
    icon = "__Spaghetorio__/graphics/krastorio/icons/entities/small-roboport.png",
    icon_size = 64,
    icon_mipmaps = 4,
    flags = { "placeable-player", "player-creation" },
    minable = { mining_time = 0.5, result = "sp-kr-small-roboport" },
    max_health = 350,
    corpse = "medium-remnants",
    damaged_trigger_effect = hit_effects.entity(),
    collision_box = { { -0.8, -0.8 }, { 0.8, 0.8 } },
    selection_box = { { -1, -1 }, { 1, 1 } },
    resistances = {
      { type = "physical", percent = 50 },
      { type = "fire", percent = 75 },
      { type = "impact", percent = 75 },
    },
    dying_explosion = "medium-explosion",
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      input_flow_limit = "12MW",
      buffer_capacity = "300MJ",
    },
    recharge_minimum = "50MJ",
    energy_usage = "50kW",
    -- per one charge slot
    charging_energy = "3MW",
    logistics_radius = 18,
    construction_radius = 34,
    charge_approach_distance = 3,
    robot_slots_count = 0,
    material_slots_count = 0,
    stationing_offset = { 0, 0 },
    charging_offsets = {
      { -0.5, -1 },
      { -1, -0.5 },
      { -1, 0.5 },
      { -0.5, 1 },
      { 0.5, 1 },
      { 1, 0.5 },
      { 1, -0.5 },
      { 0.5, -1 },
    },
    base = {
      layers = {
        {
          filename = "__Spaghetorio__/graphics/krastorio/entities/small-roboport/small-roboport.png",
          width = 120,
          height = 150,
          shift = { 0, -0.1 },
          scale = 0.5,
        },
        {
          filename = "__Spaghetorio__/graphics/krastorio/entities/small-roboport/small-roboport-sh.png",
          width = 163,
          height = 84,
          shift = { 0.48, 0.43 },
          draw_as_shadow = true,
          scale = 0.5,
        },
      },
    },
    base_patch = empty_sprite,
    base_animation = {
      layers = {
        {
          filename = "__Spaghetorio__/graphics/krastorio/entities/small-roboport/small-roboport-animation.png",
          priority = "high",
          width = 55,
          height = 40,
          scale = 0.5,
          frame_count = 8,
          shift = { 0, -0.92 },
          draw_as_glow = true,
          animation_speed = 0.1,
        },
        {
          filename = "__Spaghetorio__/graphics/krastorio/entities/small-roboport/small-roboport-animation-light.png",
          priority = "high",
          width = 55,
          height = 40,
          scale = 0.5,
          frame_count = 8,
          shift = { 0, -0.92 },
          draw_as_light = true,
          animation_speed = 0.1,
        },
      },
    },
    door_animation_up = empty_sprite,
    door_animation_down = empty_sprite,
    recharging_animation = {
      layers = {
        {
          filename = "__Spaghetorio__/graphics/krastorio/entities/small-roboport/small-roboport-recharging.png",
          priority = "high",
          width = 37,
          height = 35,
          frame_count = 16,
          scale = 1.5,
          draw_as_glow = true,
          animation_speed = 0.5,
        },
        {
          filename = "__Spaghetorio__/graphics/krastorio/entities/small-roboport/small-roboport-recharging-light.png",
          priority = "high",
          width = 37,
          height = 35,
          frame_count = 16,
          scale = 1.5,
          draw_as_light = true,
          animation_speed = 0.5,
        },
      },
    },
    recharging_light = {
      intensity = 0.2,
      size = 1,
      color = { r = 0.196, g = 0.658, b = 0.650 },
    },

    water_reflection = {
      pictures = {
        filename = "__Spaghetorio__/graphics/krastorio/entities/small-roboport/small-roboport-reflection.png",
        priority = "extra-high",
        width = 16,
        height = 22,
        shift = util.by_pixel(0, 40),
        variation_count = 1,
        scale = 5,
      },
      rotate = false,
      orientation_to_variation = false,
    },

    vehicle_impact_sound = sounds.generic_impact,
    request_to_open_door_timeout = 15,
    spawn_and_station_height = 0.33,
  },
})

