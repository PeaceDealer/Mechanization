
#Charging Station
execute if score in_3 du_data matches 2.. if score in_5 du_data matches 2.. if block ~ ~ ~ trapped_chest{Items:[{Slot:2b, tag:{OreDict:["ingotSteel"]}},{Slot:3b, tag:{OreDict:["gemCrystalComposite"]}},{Slot:4b, tag:{OreDict:["ingotSteel"]}},{Slot:11b, tag:{OreDict:["ingotConductive"]}},{Slot:12b, tag:{OreDict:["blockMachineFrame2"]}},{Slot:13b, tag:{OreDict:["ingotConductive"]}},{Slot:20b, tag:{OreDict:["ingotSteel"]}},{Slot:21b, id:"minecraft:redstone_block"},{Slot:22b, tag:{OreDict:["ingotSteel"]}}]} run function mechanization:gadgets/recipes/charging_station

#Tinker Table
execute if score in_1 du_data matches 4.. if score in_3 du_data matches 2.. if score in_5 du_data matches 2.. if block ~ ~ ~ trapped_chest{Items:[{Slot:2b, tag:{OreDict:["ingotSteel"]}},{Slot:3b, id:"minecraft:lime_stained_glass"},{Slot:4b, tag:{OreDict:["ingotSteel"]}},{Slot:11b, id:"minecraft:paper"},{Slot:12b, id:"minecraft:enchanting_table"},{Slot:13b, id:"minecraft:paper"},{Slot:20b, tag:{OreDict:["ingotSteel"]}},{Slot:21b, tag:{OreDict:["blockMachineFrame2"]}},{Slot:22b, tag:{OreDict:["ingotSteel"]}}]} run function mechanization:gadgets/recipes/tinker_table

#XP Tank
execute if score in_1 du_data matches 16.. if score in_3 du_data matches 4.. if score in_5 du_data matches 4.. if score in_7 du_data matches 4.. if block ~ ~ ~ trapped_chest{Items:[{Slot:2b, tag:{OreDict:["ingotEnder"]}},{Slot:3b, id:"minecraft:iron_bars"},{Slot:4b, tag:{OreDict:["ingotEnder"]}},{Slot:11b, id:"minecraft:glass"},{Slot:12b, tag:{OreDict:["blockMachineFrame3"]}},{Slot:13b, id:"minecraft:glass"},{Slot:20b, tag:{OreDict:["ingotEnder"]}},{Slot:21b, id:"minecraft:glass"},{Slot:22b, tag:{OreDict:["ingotEnder"]}}]} run function mechanization:gadgets/recipes/xp_tank

#Portable Battery
execute if score in_1 du_data matches 2.. if score in_7 du_data matches 2.. if block ~ ~ ~ trapped_chest{Items:[{Slot:2b, tag:{OreDict:["ingotTin"]}},{Slot:3b, tag:{OreDict:["ingotConductive"]}},{Slot:4b, tag:{OreDict:["ingotTin"]}},{Slot:11b, tag:{OreDict:["ingotTin"]}},{Slot:12b, id:"minecraft:diamond"},{Slot:13b, tag:{OreDict:["ingotTin"]}},{Slot:20b, tag:{OreDict:["ingotTin"]}},{Slot:21b, tag:{OreDict:["ingotConductive"]}},{Slot:22b, tag:{OreDict:["ingotTin"]}}]} run function mechanization:gadgets/recipes/portable_battery

#echo-locaters
execute if block ~ ~ ~ trapped_chest{Items:[{Slot:2b, id:"minecraft:iron_ingot"},{Slot:3b, id:"minecraft:iron_ingot"},{Slot:4b, id:"minecraft:white_wool"},{Slot:11b, id:"minecraft:note_block"},{Slot:12b, id:"minecraft:note_block"},{Slot:13b, id:"minecraft:white_wool"},{Slot:20b, id:"minecraft:iron_ingot"},{Slot:21b, id:"minecraft:iron_ingot"},{Slot:22b, id:"minecraft:white_wool"}]} run replaceitem block ~ ~ ~ container.16 diamond_shovel{du_nerf:1b, mech_itemid: 4100, du_click_detect:1b, Unbreakable:1, Damage:185, HideFlags:6, display: {Name: "{\"translate\":\"Iron Eco-Locater\",\"color\":\"dark_gray\",\"italic\":false}", Lore: ["§fDetects caves.","§fRange: 16 blocks."]}}
execute if block ~ ~ ~ trapped_chest{Items:[{Slot:2b, id:"minecraft:diamond"},{Slot:3b, id:"minecraft:diamond"},{Slot:4b, id:"minecraft:white_wool"},{Slot:11b, id:"minecraft:note_block"},{Slot:12b, id:"minecraft:note_block"},{Slot:13b, id:"minecraft:white_wool"},{Slot:20b, id:"minecraft:diamond"},{Slot:21b, id:"minecraft:diamond"},{Slot:22b, id:"minecraft:white_wool"}]} run replaceitem block ~ ~ ~ container.16 diamond_shovel{du_nerf:1b, mech_itemid: 4101, du_click_detect:1b, Unbreakable:1, Damage:186, HideFlags:6, display: {Name: "{\"translate\":\"Diamond Eco-Locater\",\"color\":\"dark_aqua\",\"italic\":false}", Lore: ["§fDetects caves.","§fRange: 24 blocks."]}}


#Custom Tools
execute if block ~ ~ ~ trapped_chest{Items:[{tag:{OreDict:["ingotCopper"]}}]} run function mechanization:gadgets/recipes/copper_armor
execute if block ~ ~ ~ trapped_chest{Items:[{tag:{OreDict:["ingotTin"]}}]} run function mechanization:gadgets/recipes/tin_armor
execute if block ~ ~ ~ trapped_chest{Items:[{tag:{OreDict:["ingotSteel"]}}]} run function mechanization:gadgets/recipes/steel_armor
execute if block ~ ~ ~ trapped_chest{Items:[{tag:{OreDict:["ingotStructural"]}}]} run function mechanization:gadgets/recipes/structural_armor

execute if block ~ ~ ~ trapped_chest{Items:[{tag:{OreDict:["ingotConductive"]}}]} run function mechanization:gadgets/recipes/conductive_tools
execute if block ~ ~ ~ trapped_chest{Items:[{tag:{OreDict:["gemCrystalComposite"]}}]} run function mechanization:gadgets/recipes/crystal_tools

execute if block ~ ~ ~ trapped_chest{Items:[{tag:{OreDict:["ingotTitanium"]}}]} run function mechanization:gadgets/recipes/titanium_equipment


#Upgrades
execute if score in_4 du_data matches 16.. if block ~ ~ ~ trapped_chest{Items:[{Slot:2b, tag:{OreDict:["ingotSteel"]}},{Slot:3b, tag:{OreDict:["ingotStructural"]}},{Slot:4b, tag:{OreDict:["ingotSteel"]}},{Slot:11b, tag:{OreDict:["ingotStructural"]}},{Slot:12b, id:"minecraft:paper"},{Slot:13b, tag:{OreDict:["ingotStructural"]}},{Slot:20b, tag:{OreDict:["ingotSteel"]}},{Slot:21b, tag:{OreDict:["ingotStructural"]}},{Slot:22b, tag:{OreDict:["ingotSteel"]}}]} run function mechanization:gadgets/recipes/base_upgrade

scoreboard players set temp_0 mech_data 0
execute store result score temp_0 mech_data run data get block ~ ~ ~ Items[20].Count
execute if score temp_0 mech_data matches 0 unless block ~ ~ ~ trapped_chest{Items:[{Slot:16b}]} if block ~ ~ ~ trapped_chest{Items:[{tag:{OreDict:["upgradeBase"]}, Count:1b}]} run function mechanization:gadgets/recipes/upgrades


#guns
execute if score in_0 du_data matches 2.. if score in_1 du_data matches 2.. if score in_2 du_data matches 2.. if score in_3 du_data matches 2.. if score in_4 du_data matches 2.. if score in_6 du_data matches 2.. if score in_7 du_data matches 2.. if score in_8 du_data matches 2.. if block ~ ~ ~ trapped_chest{Items:[{Slot:2b, tag:{OreDict:["ingotSteel"]}},{Slot:3b, tag:{OreDict:["ingotSteel"]}},{Slot:4b, tag:{OreDict:["ingotSteel"]}},{Slot:11b, tag:{OreDict:["ingotConductive"]}},{Slot:12b, tag:{OreDict:["ingotConductive"]}},{Slot:13b, tag:{OreDict:["gemCrystalComposite"]}},{Slot:20b, tag:{OreDict:["ingotSteel"]}},{Slot:21b, tag:{OreDict:["ingotSteel"]}},{Slot:22b, tag:{OreDict:["ingotSteel"]}}]} run function mechanization:gadgets/recipes/gun_barrel
execute if block ~ ~ ~ trapped_chest{Items:[{Slot:2b, tag:{OreDict:["ingotStructural"]}},{Slot:3b, tag:{OreDict:["gemCrystalComposite"]}},{Slot:4b, tag:{OreDict:["ingotStructural"]}},{Slot:11b, tag:{OreDict:["ingotStructural"]}},{Slot:12b, tag:{OreDict:["gemCrystalComposite"]}},{Slot:13b, tag:{OreDict:["ingotStructural"]}},{Slot:20b, tag:{OreDict:["ingotStructural"]}},{Slot:21b, tag:{OreDict:["ingotStructural"]}},{Slot:22b, tag:{OreDict:["ingotStructural"]}}]} run replaceitem block ~ ~ ~ container.16 diamond_shovel{du_nerf:1b, mech_itemid: 4401, OreDict:["itemGunMagazine"],Unbreakable:1,Damage:191,HideFlags:6,display:{Lore:["§fGun part."],Name:"{\"translate\":\"mech.item.gun_magazine\",\"color\":\"gray\",\"italic\":false}"}}
execute if score in_7 du_data matches 0 if score in_8 du_data matches 0 if block ~ ~ ~ trapped_chest{Items:[{Slot:2b, tag:{OreDict:["ingotSteel"]}},{Slot:3b, tag:{OreDict:["ingotSteel"]}},{Slot:4b, tag:{OreDict:["ingotSteel"]}},{Slot:11b, tag:{OreDict:["ingotSteel"]}},{Slot:12b, id:"minecraft:iron_ingot"},{Slot:13b, id:"minecraft:iron_ingot"},{Slot:20b, tag:{OreDict:["ingotSteel"]}}]} run replaceitem block ~ ~ ~ container.16 diamond_shovel{du_nerf:1b, mech_itemid: 4403, OreDict:["itemGunTrigger"],Unbreakable:1,Damage:190,HideFlags:6,display:{Lore:["§fGun part."],Name:"{\"translate\":\"mech.item.gun_trigger\",\"color\":\"gray\",\"italic\":false}"}}
execute if score in_0 du_data matches 2.. if score in_1 du_data matches 2.. if score in_2 du_data matches 2.. if score in_3 du_data matches 2.. if score in_4 du_data matches 2.. if score in_5 du_data matches 0 if score in_6 du_data matches 0 if score in_7 du_data matches 0 if score in_8 du_data matches 0 if block ~ ~ ~ trapped_chest{Items:[{Slot:2b, id:"minecraft:white_wool"},{Slot:3b, tag:{OreDict:["ingotStructural"]}},{Slot:4b, tag:{OreDict:["ingotStructural"]}},{Slot:11b, id:"minecraft:white_wool"},{Slot:12b, tag:{OreDict:["ingotStructural"]}}]} run function mechanization:gadgets/recipes/gun_stock

execute if score in_1 du_data matches 8.. if score in_3 du_data matches 0 if score in_6 du_data matches 0 if score in_7 du_data matches 0 if score in_8 du_data matches 0 if block ~ ~ ~ trapped_chest{Items:[{Slot:2b, tag:{OreDict:["itemGunStock"]}},{Slot:3b, id:"minecraft:repeater"},{Slot:4b, tag:{OreDict:["itemGunBarrel"]}},{Slot:12b, tag:{OreDict:["itemGunTrigger"]}},{Slot:13b, tag:{OreDict:["itemGunMagazine"]}}]} run function mechanization:gadgets/recipes/smg
execute if score in_1 du_data matches 32.. if score in_3 du_data matches 0 if score in_6 du_data matches 0 if score in_7 du_data matches 0 if score in_8 du_data matches 0 if block ~ ~ ~ trapped_chest{Items:[{Slot:2b, tag:{OreDict:["itemGunStock"]}},{Slot:3b, id:"minecraft:redstone"},{Slot:4b, tag:{OreDict:["itemGunBarrel"]}},{Slot:12b, tag:{OreDict:["itemGunTrigger"]}},{Slot:13b, tag:{OreDict:["itemGunMagazine"]}}]} run function mechanization:gadgets/recipes/rifle
execute if score in_1 du_data matches 32.. if score in_3 du_data matches 0 if score in_6 du_data matches 0 if score in_7 du_data matches 0 if score in_8 du_data matches 0 if block ~ ~ ~ trapped_chest{Items:[{Slot:2b, tag:{OreDict:["itemGunStock"]}},{Slot:3b, id:"minecraft:glowstone_dust"},{Slot:4b, tag:{OreDict:["itemGunBarrel"]}},{Slot:12b, tag:{OreDict:["itemGunTrigger"]}},{Slot:13b, tag:{OreDict:["itemGunMagazine"]}}]} run function mechanization:gadgets/recipes/pistol
execute if score in_3 du_data matches 0 if score in_6 du_data matches 0 if score in_7 du_data matches 0 if score in_8 du_data matches 0 if block ~ ~ ~ trapped_chest{Items:[{Slot:2b, tag:{OreDict:["itemGunStock"]}},{Slot:3b, tag:{OreDict:["gemCrystalComposite"]}},{Slot:4b, tag:{OreDict:["itemGunBarrel"]}},{Slot:12b, tag:{OreDict:["itemGunTrigger"]}},{Slot:13b, tag:{OreDict:["itemGunMagazine"]}}]} run replaceitem block ~ ~ ~ container.16 diamond_shovel{du_nerf:1b, mech_itemid: 4105, du_click_detect:1b,Unbreakable:1,Damage:142,HideFlags:6,modified:3,OreDict:["itemPlasmaSniper"],mech_gun:{energy:64,fire_rate:40,heat:400,recoil_x:8,recoil_y:8,damage:80,velocity:10},display:{Name:"{\"translate\":\"mech.item.plasma_sniper\",\"color\":\"dark_aqua\",\"italic\":false}"},AttributeModifiers:[{AttributeName:"generic.movementSpeed",Name:"generic.movementSpeed",Amount:0.0,Operation:1,UUIDLeast:100006,UUIDMost:100006,Slot:"mainhand"},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:100,Operation:0,UUIDLeast:91804,UUIDMost:191102,Slot:"mainhand"}]}

#Gun Upgrades
execute if score in_0 du_data matches 0 if score in_1 du_data matches 2.. if score in_2 du_data matches 2.. if score in_3 du_data matches 0 if score in_5 du_data matches 4.. if score in_6 du_data matches 2.. if score in_7 du_data matches 2.. if score in_8 du_data matches 2.. if block ~ ~ ~ trapped_chest{Items:[{Slot:3b, tag:{OreDict:["ingotSteel"]}},{Slot:4b, tag:{OreDict:["ingotSteel"]}},{Slot:12b, id:"minecraft:red_stained_glass"},{Slot:13b, id:"minecraft:glass"},{Slot:20b, tag:{OreDict:["ingotSteel"]}},{Slot:21b, tag:{OreDict:["ingotSteel"]}},{Slot:22b, tag:{OreDict:["ingotSteel"]}}]} run function mechanization:gadgets/recipes/sight
execute if score in_0 du_data matches 2.. if score in_1 du_data matches 2.. if score in_2 du_data matches 2.. if score in_3 du_data matches 4.. if score in_4 du_data matches 0 if score in_5 du_data matches 4.. if score in_6 du_data matches 2.. if score in_7 du_data matches 2.. if score in_8 du_data matches 2.. if block ~ ~ ~ trapped_chest{Items:[{Slot:2b, tag:{OreDict:["ingotSteel"]}},{Slot:3b, tag:{OreDict:["ingotSteel"]}},{Slot:4b, tag:{OreDict:["ingotSteel"]}},{Slot:11b, id:"minecraft:glass"},{Slot:13b, id:"minecraft:glass"},{Slot:20b, tag:{OreDict:["ingotSteel"]}},{Slot:21b, tag:{OreDict:["ingotSteel"]}},{Slot:22b, tag:{OreDict:["ingotSteel"]}}]} run function mechanization:gadgets/recipes/scope
execute if score in_0 du_data matches 2.. if score in_1 du_data matches 2.. if score in_2 du_data matches 2.. if score in_3 du_data matches 0 if score in_4 du_data matches 2.. if score in_5 du_data matches 0 if score in_6 du_data matches 0 if score in_7 du_data matches 2.. if score in_8 du_data matches 0 if block ~ ~ ~ trapped_chest{Items:[{Slot:2b, tag:{OreDict:["ingotSteel"]}},{Slot:3b, tag:{OreDict:["ingotSteel"]}},{Slot:4b, tag:{OreDict:["ingotSteel"]}},{Slot:12b, tag:{OreDict:["ingotSteel"]}},{Slot:21b, tag:{OreDict:["ingotSteel"]}}]} run function mechanization:gadgets/recipes/vertical_grip
execute if score in_0 du_data matches 2.. if score in_1 du_data matches 2.. if score in_2 du_data matches 2.. if score in_3 du_data matches 2.. if score in_4 du_data matches 2.. if score in_5 du_data matches 0 if score in_6 du_data matches 2.. if score in_7 du_data matches 0 if score in_8 du_data matches 0 if block ~ ~ ~ trapped_chest{Items:[{Slot:2b, tag:{OreDict:["ingotSteel"]}},{Slot:3b, tag:{OreDict:["ingotSteel"]}},{Slot:4b, tag:{OreDict:["ingotSteel"]}},{Slot:11b, tag:{OreDict:["ingotSteel"]}},{Slot:12b, tag:{OreDict:["ingotSteel"]}},{Slot:20b, tag:{OreDict:["ingotSteel"]}}]} run function mechanization:gadgets/recipes/angled_grip










