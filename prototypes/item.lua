--item.lua

--Require some things here if needed

--Define the items
local neutroniumArmor = table.deepcopy(data.raw.armor["power-armor-mk2"])
local solidifiedHydrogenOre = table.deepcopy(data.raw.resource["iron-ore"])

neutroniumArmor.name = "neutronium-armor"
neutroniumArmor.icons = {
   {
      icon=neutroniumArmor.icon,
      tint={r=1,g=0,b=0,a=0.3}
   },
}

solidifiedHydrogenOre.name = "solidified-hydrogen-ore"
solidifiedHydrogenOre.icons = {
   {
      icon=solidifiedHydrogenOre.icon,
      tint={r=0.9,g=0,b=0.1}
   },
}

neutroniumArmor.resistances = {
   {
      type = "physical",
      decrease = 1,
      percent = 95
   },
   {
      type = "explosion",
      decrease = 5,
      percent = 95
   },
   {
      type = "acid",
      decrease = 1,
      percent = 95
   },
   {
      type = "fire",
      decrease = 0,
      percent = 95
   },
}

local recipe = table.deepcopy(data.raw.recipe["power-armor-mk2"])
recipe.enabled = true
recipe.name = "neutronium-armor"
recipe.ingredients = {{"copper-plate",2000},{"steel-plate",500},{"power-armor-mk2",10},{"electric-engine-unit",300},{"fusion-reactor-equipment", 1}}
recipe.result = "neutronium-armor"

data:extend{neutroniumArmor,recipe,solidifiedHydrogenOre}
