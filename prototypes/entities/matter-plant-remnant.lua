data:extend({
  {
    type = "corpse",
    name = "sp-kr-matter-plant-remnant",
    localised_name = { "remnant-name", { "entity-name.kr-matter-plant" } },
    icon = "__Spaghetorio__/graphics/krastorio/icons/entities/matter-plant.png",
    icon_size = 128,
    flags = { "placeable-neutral", "building-direction-8-way", "not-on-map" },
    selection_box = { { -4.5, -4.5 }, { 4.5, 4.5 } },
    tile_width = 9,
    tile_height = 9,
    selectable_in_game = false,
    subgroup = "remnants",
    order = "z[remnants]-a[generic]-b[medium]",
    time_before_removed = 60 * 60 * 20, -- 20 minutes
    final_render_layer = "remnants",
    remove_on_tile_placement = false,
    animation = make_rotated_animation_variations_from_sheet(1, {
      filename = "__Spaghetorio__/graphics/krastorio/entities/remnants/matter-plant/matter-plant-remnant.png",
      line_length = 1,
      width = 300,
      height = 300,
      frame_count = 1,
      direction_count = 1,
    }),
  },
})
