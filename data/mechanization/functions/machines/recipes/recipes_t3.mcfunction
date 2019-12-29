
#Teleporter
execute if score $crafting.in_0 du_data matches 2.. if score $crafting.in_1 du_data matches 2.. if score $crafting.in_2 du_data matches 2.. if score $crafting.in_3 du_data matches 2.. if score $crafting.in_5 du_data matches 2.. if score $crafting.in_6 du_data matches 2.. if score $crafting.in_7 du_data matches 2.. if score $crafting.in_8 du_data matches 2.. if block ~ ~ ~ barrel{Items:[{Slot:2b, id:"minecraft:gray_concrete"},{Slot:3b, tag:{OreDict:["gemCrystalComposite"]}},{Slot:4b, id:"minecraft:gray_concrete"},{Slot:11b, tag:{OreDict:["ingotSuperConductive"]}},{Slot:12b, tag:{OreDict:["blockMachineFrame3"]}},{Slot:13b, tag:{OreDict:["ingotSuperConductive"]}},{Slot:20b, id:"minecraft:gray_concrete"},{Slot:21b, tag:{OreDict:["ingotEnderAlloy"]}},{Slot:22b, id:"minecraft:gray_concrete"}]} run function mechanization:machines/recipes/teleporter

#Spawner Controller
execute if score $crafting.in_3 du_data matches 2.. if score $crafting.in_5 du_data matches 2.. if block ~ ~ ~ barrel{Items:[{Slot:2b, id:"minecraft:wither_skeleton_skull"},{Slot:3b, tag:{OreDict:["ingotNetherAlloy"]}},{Slot:4b, id:"minecraft:wither_skeleton_skull"},{Slot:11b, tag:{OreDict:["ingotSuperConductive"]}},{Slot:12b, tag:{OreDict:["blockMachineFrame3"]}},{Slot:13b, tag:{OreDict:["ingotSuperConductive"]}},{Slot:20b, id:"minecraft:wither_skeleton_skull"},{Slot:21b, tag:{OreDict:["ingotNetherAlloy"]}},{Slot:22b, id:"minecraft:wither_skeleton_skull"}]} run function mechanization:machines/recipes/spawner_controller

#Disenchanter
execute if score $crafting.in_0 du_data matches 2.. if score $crafting.in_1 du_data matches 4.. if score $crafting.in_2 du_data matches 2.. if score $crafting.in_3 du_data matches 2.. if score $crafting.in_5 du_data matches 2.. if score $crafting.in_6 du_data matches 2.. if score $crafting.in_7 du_data matches 2.. if score $crafting.in_8 du_data matches 2.. if block ~ ~ ~ barrel{Items:[{Slot:2b, id:"minecraft:obsidian"},{Slot:3b, id:"minecraft:book"},{Slot:4b, id:"minecraft:obsidian"},{Slot:11b, tag:{OreDict:["ingotSuperConductive"]}},{Slot:12b, tag:{OreDict:["blockMachineFrame3"]}},{Slot:13b, tag:{OreDict:["ingotSuperConductive"]}},{Slot:20b, id:"minecraft:obsidian"},{Slot:21b, tag:{OreDict:["gemCrystalComposite"]}},{Slot:22b, id:"minecraft:obsidian"}]} run function mechanization:machines/recipes/disenchanter

#Dimensional Generator
execute if score $crafting.in_0 du_data matches 2.. if score $crafting.in_2 du_data matches 2.. if score $crafting.in_3 du_data matches 2.. if score $crafting.in_5 du_data matches 2.. if score $crafting.in_6 du_data matches 2.. if score $crafting.in_8 du_data matches 2.. if block ~ ~ ~ barrel{Items:[{Slot:2b, id:"minecraft:purpur_block"},{Slot:3b, tag:{OreDict:["ingotEnderAlloy"]}},{Slot:4b, id:"minecraft:purpur_block"},{Slot:11b, tag:{OreDict:["ingotSuperConductive"]}},{Slot:12b, tag:{OreDict:["blockMachineFrame3"]}},{Slot:13b, tag:{OreDict:["ingotSuperConductive"]}},{Slot:20b, id:"minecraft:purpur_block"},{Slot:21b, id:"minecraft:furnace"},{Slot:22b, id:"minecraft:purpur_block"}]} run function mechanization:machines/recipes/dimensional_generator
