local Prototype = require("stdlib.prototype.prototype")

-------------------------------------------------------------------------------
--[[Recipes]]--
local recipe1={
    type = "recipe",
    name = "olefin-plant",
    energy_requiered = 15,
    enabled = false,
    ingredients =
    {
        {"storage-tank", 4},
        {"chemical-plant", 2}, --updated-bob electrolyser
        {"electronic-circuit", 30},
        {"steel-plate", 40},
        {"iron-gear-wheel", 15}, --updated-bob steel-bearing

    },
    result= "olefin-plant",
}
-------------------------------------------------------------------------------
--[[Items]]--
local item1={
    type = "item",
    name = "olefin-plant",
    icon = "__pycoalprocessing__/graphics/icons/olefin-plant.png",
    flags = {"goes-to-quickbar"},
    subgroup = "coal-processing",
    order = "a-c[olefin-plant]",
    place_result = "olefin-plant",
    stack_size = 10,
}
-------------------------------------------------------------------------------
--[[Entites]]--
local entity1={
    type = "assembling-machine",
    name = "olefin-plant",
    icon = "__pycoalprocessing__/graphics/icons/olefin-plant.png",
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "olefin-plant"},
    fast_replaceable_group = "olefin-plant",
    max_health = 400,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-2.75, -2.75}, {2.75, 2.75}},
    selection_box = {{-3, -3}, {3, 3}},
    module_specification =
    {
        module_slots = 4
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"olefin"},
    crafting_speed = 0.65,
    energy_source =
    {
        type = "electric",
        usage_priority = "secondary-input",
        emissions = 0.03,
    },
    energy_usage = "350kW",
    ingredient_count = 5,

    animation =
    {
        filename = "__pycoalprocessing__/graphics/entity/olefin-plant/olefin-off.png",
        width = 205,
        height = 224,
        frame_count = 1,
        --animation_speed = 0.5,
        shift = {0.174, -0.53},
    },

    working_visualisations =
    {
        {
            north_position = {0.17, -0.53},
            west_position = {0.17, -0.53},
            south_position = {0.17, -0.53},
            east_position = {0.17, -0.53},
            animation =
            {
                filename = "__pycoalprocessing__/graphics/entity/olefin-plant/olefin-plant.png",
                frame_count = 69,
                line_length = 9,
                width = 205,
                height = 224,
                animation_speed = 0.25
            }
        },
    },

    fluid_boxes =
    {
        --North
        {
            production_type = "output",
            pipe_picture = Prototype.Pipes.pictures("assembling-machine-3", nil, {-0.0,-0.95}, nil, nil),
            pipe_covers = Prototype.Pipes.covers(true, true, true, true),
            base_level = 1,
            pipe_connections = {{ type="output", position = {0.5, -3.5} }}
        },

        --North2
        {
            production_type = "output",
            pipe_picture = Prototype.Pipes.pictures("assembling-machine-3", nil, {-0.0,-0.95}, nil, nil),
            pipe_covers = Prototype.Pipes.covers(true, true, true, true),
            base_level = 1,
            pipe_connections = {{ type="output", position = {-1.5, -3.5} }}
        },

        --South
        {
            production_type = "input",
            pipe_picture = Prototype.Pipes.pictures("assembling-machine-3", nil, {-0.00,-0.95}, nil, nil),
            pipe_covers = Prototype.Pipes.covers(true, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{ type="input", position = {-0.5, 3.5} }}
        },
        --South2
        {
            production_type = "input",
            pipe_picture = Prototype.Pipes.pictures("assembling-machine-3", nil, {-0.00,-0.95}, nil, nil),
            pipe_covers = Prototype.Pipes.covers(true, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{ type="input", position = {1.5, 3.5} }}
        },
	off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
        sound = { filename = "__pycoalprocessing__/sounds/olefin-plant.ogg" },
        idle_sound = { filename = "__pycoalprocessing__/sounds/olefin-plant.ogg", volume = 0.75 },
        apparent_volume = 2.5,
    },
}
-------------------------------------------------------------------------------
--[[Extend Data]]--
if recipe1 then data:extend({recipe1}) end
if item1 then data:extend({item1}) end
if entity1 then data:extend({entity1}) end
