local hit_effects = require("__base__/prototypes/entity/hit-effects")
local sounds = require("__base__/prototypes/entity/sounds")


circuit_connector_definitions["sp-kr-quarry-drill"] = circuit_connector_definitions.create_vector(universal_connector_template, {
  { variation = 0, main_offset = util.by_pixel(5, -118), shadow_offset = util.by_pixel(7, -118), show_shadow = true },
  {
    variation = 2,
    main_offset = util.by_pixel(100, -22),
    shadow_offset = util.by_pixel(102, -22),
    show_shadow = true,
  },
  { variation = 4, main_offset = util.by_pixel(-4, 82), shadow_offset = util.by_pixel(-2, 82), show_shadow = true },
  {
    variation = 6,
    main_offset = util.by_pixel(-100, -15),
    shadow_offset = util.by_pixel(-98, -15),
    show_shadow = true,
  },
})

data:extend({
  {
    type = "mining-drill",
    name = "sp-kr-quarry-drill",  -- #ForRegEx# - building
    icon = "__Spaghetorio__/graphics/krastorio/icons/entities/quarry-drill.png",
    icon_size = 64,
    icon_mipmaps = 4,
    flags = { "placeable-neutral", "player-creation" },
    minable = { mining_time = 1, result = "sp-kr-quarry-drill" },
    damaged_trigger_effect = hit_effects.entity(),
    fast_replaceable_group = "sp-kr-quarry-drills",
    max_health = 1000,
    resource_categories = { "sp-kr-quarry" },
    corpse = "sp-kr-big-random-pipes-remnant",
    dying_explosion = "big-explosion",
    resistances = {
      { type = "physical", percent = 50 },
      { type = "fire", percent = 70 },
      { type = "impact", percent = 70 },
    },
    collision_box = { { -3.3, -3.3 }, { 3.3, 3.3 } },
    selection_box = { { -3.5, -3.5 }, { 3.5, 3.5 } },
    module_slots = 2,
    allowed_effects = { "consumption", "speed", "productivity", "pollution" },
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = {pollution = 100},
    },
    energy_usage = "2.5MW",
    mining_speed = 10,
    mining_power = 3,
    resource_searching_radius = 0.49,
    vector_to_place_result = { 0, -3.65 },
    radius_visualisation_picture = {
      filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png",
      width = 12,
      height = 12,
    },
    graphics_set = {
      animation = {
        layers = {
          {
            priority = "extra-high",
            filename = "__Spaghetorio__/graphics/krastorio/entities/quarry-drill/quarry-drill-light.png",
            width = 220,
            height = 232,
            frame_count = 90,
            line_length = 10,
            shift = { 0, -0.18 },
            draw_as_light = true,
            blend_mode = "additive",
            flags = { "light" },
            animation_speed = 0.3,
            scale = 1.04,
          },
          {
            priority = "high",
            filename = "__Spaghetorio__/graphics/krastorio/entities/quarry-drill/quarry-drill.png",
            width = 220,
            height = 232,
            frame_count = 90,
            line_length = 10,
            shift = { 0, -0.18 },
            animation_speed = 0.3,
            scale = 1.04,
          },
          {
            priority = "medium",
            filename = "__Spaghetorio__/graphics/krastorio/entities/quarry-drill/quarry-drill-sh.png",
            width = 250,
            height = 211,
            frame_count = 1,
            repeat_count = 90,
            shift = { 0, 0.05 },
            draw_as_shadow = true,
            animation_speed = 0.3,
            scale = 1.04,
          },
        },
      },
    },
    vehicle_impact_sound = sounds.generic_impact,
    working_sound = {
      sound = {
        filename = "__Spaghetorio__/sounds/buildings/quarry-drill.ogg",
        volume = 0.5,
      },
      idle_sound = { filename = "__base__/sound/idle1.ogg" },
      max_sounds_per_type = 2,
    },
    circuit_wire_connection_points = circuit_connector_definitions["sp-kr-quarry-drill"].points,
    circuit_connector_sprites = circuit_connector_definitions["sp-kr-quarry-drill"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,
  },
})
