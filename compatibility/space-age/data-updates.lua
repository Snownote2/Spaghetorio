
-- MARK: Change recipe subgroups -- some lua scripts require to keep the subgroup of recipe
-- group resource
data.raw.recipe["molten-iron-from-lava"].subgroup = "sp-casting-raw-resource"
data.raw.recipe["molten-copper-from-lava"].subgroup = "sp-casting-raw-resource"

-- group material
data.raw.recipe["casting-iron"].subgroup = "sp-casting-raw-material"
data.raw.recipe["casting-steel"].subgroup = "sp-casting-raw-material"
data.raw.recipe["casting-copper"].subgroup = "sp-casting-raw-material"

-- group intermediates
data.raw.recipe["casting-iron-gear-wheel"].subgroup = "sp-casting-mechanical-component"
data.raw.recipe["casting-iron-stick"].subgroup = "sp-casting-mechanical-component"
data.raw.recipe["casting-copper-cable"].subgroup = "sp-casting-mechanical-component"
data.raw.recipe["casting-pipe"].subgroup = "sp-casting-mechanical-component"

-- MARK: Fix order... agane...
data.raw["autoplace-control"]["sulfuric_acid_geyser"].order = "c[sulfuric-acid-geyser]"

-- MARK: Building changes
table.insert(data.raw["assembling-machine"]["electromagnetic-plant"].crafting_categories, "sp-manufacturing-electronics")


data.raw.lab["biolab"].inputs = {
  "automation-science-pack",
  "logistic-science-pack",
  "military-science-pack",
  "chemical-science-pack",
  "sp-geological-science-pack-1",
  "sp-material-science-pack-1",
  "sp-electronic-science-pack-1",

  "sp-automation-science-pack-2",
  "sp-logistic-science-pack-2",
  "sp-military-science-pack-2",
  "sp-chemical-science-pack-2",
  "sp-electronic-science-pack-2",
  "sp-geological-science-pack-2",
  "sp-material-science-pack-2",
  "sp-metallurgic-science-pack-2",
  "sp-electromagnetic-science-pack-2",
  "sp-computer-science-pack-2",
  "sp-nuclear-science-pack-2",
  "production-science-pack",
  "utility-science-pack",
  "space-science-pack",

  "sp-automation-science-pack-3",
  "sp-logistic-science-pack-3",
  "sp-military-science-pack-3",
  "sp-chemical-science-pack-3",
  "sp-electronic-science-pack-3",
  "sp-geological-science-pack-3",
  "sp-material-science-pack-3",
  "sp-metallurgic-science-pack-3",
  "sp-electromagnetic-science-pack-3",
  "sp-biological-science-pack-3",
  "sp-cryogenic-science-pack-3",
  "sp-computer-science-pack-3",
  "sp-production-science-pack-3",
  "sp-nuclear-science-pack-3",
  "sp-utility-science-pack-3",
  "sp-space-science-pack-3",
  "sp-matter-science-pack",

  "agricultural-science-pack",
  "electromagnetic-science-pack",
  "metallurgic-science-pack",
  "cryogenic-science-pack",
  -- "promethium-science-pack",
}
