local fluid = {
    type = "fluid",
    name = "organic-solvent",
    icon = "__pycoalprocessing__/graphics/icons/organic-solvent.png",
    default_temperature = 15,
    heat_capacity = "1KJ",
    base_color = {r = 0.172, g = 0.705, b = 0.447},
    flow_color = {r = 0.172, g = 0.705, b = 0.447},
    max_temperature = 100,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-fluids",
    order = "z-[organic-solvent]"
}

data:extend {fluid}

