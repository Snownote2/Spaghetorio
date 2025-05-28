local hit_effects = require("__base__/prototypes/entity/hit-effects")
local sounds = require("__base__/prototypes/entity/sounds")

data:extend({
  {
    type = "furnace",
    name = "sp-kr-stabilizer-charging-station",  -- #ForRegEx# - building
    icon = "__Spaghetorio__/graphics/krastorio/icons/entities/stabilizer-charging-station.png",
    icon_size = 128,
    icon_mipmaps = 4,
    flags = { "placeable-neutral", "placeable-player", "player-creation" },
    minable = { mining_time = 0.5, result = "sp-kr-stabilizer-charging-station" },
    max_health = 200,
    damaged_trigger_effect = hit_effects.entity(),
    dying_explosion = "small-matter-explosion",
    corpse = "medium-remnants",
    resistances = {
      { type = "physical", percent = 20 },
      { type = "fire", percent = 35 },
    },
    collision_box = { { -0.7, -0.7 }, { 0.7, 0.7 } },
    selection_box = { { -0.9, -0.9 }, { 0.9, 0.9 } },
    graphics_set = {
      animation = {
        layers = {
          {
            filename = "__Spaghetorio__/graphics/krastorio/entities/stabilizer-charging-station/stabilizer-charging-station.png",
            priority = "high",
            width = 85,
            height = 85,
            frame_count = 80,
            line_length = 10,
            animation_speed = 0.4,
            scale = 0.8,
          },
          {
            filename = "__Spaghetorio__/graphics/krastorio/entities/stabilizer-charging-station/stabilizer-charging-station-sh.png",
            priority = "high",
            width = 85,
            height = 72,
            frame_count = 80,
            line_length = 8,
            animation_speed = 0.4,
            shift = { 0.23, 0.262 },
            draw_as_shadow = true,
            scale = 0.9,
          },
        },
      },
      working_visualisations = {
        {
          animation = {
            filename = "__Spaghetorio__/graphics/krastorio/entities/stabilizer-charging-station/stabilizer-charging-station-light.png",
            priority = "high",
            width = 85,
            height = 85,
            frame_count = 80,
            line_length = 10,
            animation_speed = 0.4,
            scale = 0.8,
            draw_as_light = true,
          },
        },
      },
    },
    crafting_categories = { "sp-kr-stabilizer-charging" },
    vehicle_impact_sound = sounds.generic_impact,
    working_sound = {
      sound = {
        filename = "__Spaghetorio__/sounds/buildings/stabilizer-charging-station.ogg",
        volume = 0.5,
      },
      idle_sound = {
        filename = "__base__/sound/idle1.ogg",
      },
      apparent_volume = 1.5,
    },
    crafting_speed = 2.0,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = {pollution = 1},
    },

    water_reflection = {
      pictures = {
        filename = "__Spaghetorio__/graphics/krastorio/entities/stabilizer-charging-station/stabilizer-charging-station-reflection.png",
        priority = "extra-high",
        width = 20,
        height = 25,
        shift = util.by_pixel(0, 40),
        variation_count = 1,
        scale = 5,
      },
      rotate = false,
      orientation_to_variation = false,
    },

    energy_usage = "1MW",
    result_inventory_size = 1,
    source_inventory_size = 1,
    module_slots = 2,
    allowed_effects = { "consumption", "speed", "pollution" },
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
  },
})
