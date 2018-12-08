RECIPE {
    type = "recipe",
    name = "advanced-foundry-mk01",
    energy_required = 10,
    enabled = false,
    ingredients = {
        {"copper-cable", 30},
        {"iron-plate", 20},
        {"steel-furnace", 4},
        {"steel-plate", 70},
        {"electronic-circuit", 30}
    },
    results = {
        {"advanced-foundry-mk01", 1}
    }
}:add_unlock("coal-processing-1")

ITEM {
    type = "item",
    name = "advanced-foundry-mk01",
    icon = "__pycoalprocessing__/graphics/icons/advanced-foundry-mk01.png",
    icon_size = 32,
    flags = {"goes-to-quickbar"},
    subgroup = "coal-processing",
    order = "b",
    place_result = "advanced-foundry-mk01",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "advanced-foundry-mk01",
    icon = "__pycoalprocessing__/graphics/icons/advanced-foundry-mk01.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "advanced-foundry-mk01"},
    fast_replaceable_group = "advanced-foundry",
    max_health = 600,
    corpse = "medium-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-2.9, -2.9}, {2.9, 2.9}},
    selection_box = {{-3.0, -3.0}, {3.0, 3.0}},
    module_specification = {
        module_slots = 1
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"advanced-foundry", "smelting"},
    crafting_speed = 1,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions = 0.05
    },
    energy_usage = "270kW",
    ingredient_count = 10,
    animation = {
        layers = {
            {
                filename = "__pycoalprocessing__/graphics/entity/advanced-foundry/advanced-foundry-base-mk01.png",
                width = 224,
                height = 224,
                line_length = 9,
                frame_count = 76,
                shift = {0.3, -0.5},
                animation_speed = 0.5
            },
            {
                filename = "__pycoalprocessing__/graphics/entity/advanced-foundry/advanced-foundry-top-mk01.png",
                width = 224,
                height = 41,
                line_length = 9,
                frame_count = 76,
                shift = {0.3, -4.63},
                animation_speed = 0.5
            }
        }
    },
    fluid_boxes = {
        {
            production_type = "input",
            pipe_covers = DATA.Pipes.covers(true, true, true, true),
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {0, -0.88}, nil, nil),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {3.4, -0.5}}}
        },
        {
            production_type = "output",
            pipe_covers = DATA.Pipes.covers(true, true, true, true),
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {0, -0.88}, nil, nil),
            base_level = 1,
            pipe_connections = {{position = {-3.4, -0.5}}}
        },
        off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pycoalprocessing__/sounds/advanced-foundry.ogg", volume = 0.6},
        idle_sound = {filename = "__pycoalprocessing__/sounds/advanced-foundry.ogg", volume = 0.45},
        apparent_volume = 2.5
    }
}