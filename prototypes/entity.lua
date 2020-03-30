require("item")
-- Solidified hydrogen ore
data:extend({{
	type = "resource",
    name = "solidified-hydrogen-ore",
    category = "resources",
    icon = "graphics/icons/solidified-hydrogen-ore.png",
    icon_size = 32,
    flags = {"placeable-neutral"},
    order = "q",
    map_color = {r = 0.9, g = 0.0, b = 0.1},
    highlight = true,
    minimum = 400,
    normal = 1000,
    maximum = 2000,
    minable = {
        hardness = 1.5,
        -- mining_particle = "solidified-hydrogen-particle",
        mining_time = 3,
        results = {
            {"solidified-hydrogen-ore", 1}
        },
        fluid_amount = 60,
    },
    collision_box = {{-0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    autoplace = {
        control = "Solidified hydrogen ore",
        sharpness = 1,
        richness_multiplier = 1500,
        richness_multiplier_distance_bonus = 30,
        richness_base = 500,
        coverage = 0.003,
        peaks = {
            {
                noise_layer = "solidified-hydrogen-ore",
                noise_octaves_difference = -1.5,
                noise_persistence = 0.3,
                starting_area_weight_optimal = 0,
                starting_area_weight_range = 0,
                starting_area_weight_max_range = 2
            }
        }
    },
    stage_counts = {2000, 1600, 1400, 1200, 800, 400, 200, 10},
    stages = {
        sheet = {
            filename = "graphics/ores/solidified-hydrogen.png",
            priority = "extra-high",
            width = 64,
            height = 64,
            frame_count = 8,
            variation_count = 8,
            hr_version = {
                filename = "graphics/ores/solidified-hydrogen.png",
                priority = "extra-high",
                width = 64,
                height = 64,
                frame_count = 8,
                variation_count = 8,
                scale = 0.5
            }
        }
    }
}})