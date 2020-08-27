#> Sets up all fun scoreboards.
# Called By: nuhser_core:initialize_counters <SERVER>

# generals
scoreboard objectives add Deaths deathCount
scoreboard objectives add Player_Kills playerKillCount "Players Killed"
scoreboard objectives add Total_Kills totalKillCount "Total Kills"
scoreboard objectives add Health health
scoreboard objectives add Level level

# statistics
scoreboard objectives add Animals_Bred minecraft.custom:minecraft.animals_bred "Animals Bred"
scoreboard objectives add Distance_Flown minecraft.custom:minecraft.aviate_one_cm "Distance Flown in cm"
scoreboard objectives add Distance_on_Boat minecraft.custom:minecraft.boat_one_cm "Distance in Boat in cm"
scoreboard objectives add Brew_Interaction minecraft.custom:minecraft.interact_with_brewingstand "Brewingstand Interactions"
scoreboard objectives add Filled_Cauldrons minecraft.custom:minecraft.fill_cauldron "Filled Cauldrons"
scoreboard objectives add Opened_Chests minecraft.custom:minecraft.open_chest "Opened Chests"
scoreboard objectives add CT_Interaction minecraft.custom:minecraft.interact_with_crafting_table "Crafting Table Interaction"
scoreboard objectives add Dist_Crouched minecraft.custom:minecraft.crouch_one_cm "Distance Crouched in cm"
scoreboard objectives add Damage_Dealt minecraft.custom:minecraft.damage_dealt "Damage Dealt"
scoreboard objectives add Damage_Taken minecraft.custom:minecraft.damage_taken "Damage Taken"
scoreboard objectives add Disp_Inspections minecraft.custom:minecraft.inspect_dispenser "Dispenser Inspections"
scoreboard objectives add Droped_Items minecraft.custom:minecraft.drop "Droped Items"
scoreboard objectives add Drop_Inspections minecraft.custom:minecraft.inspect_dropper "Dropper Interactions"
scoreboard objectives add Open_Enderchest minecraft.custom:minecraft.open_enderchest "Opened Enderchest"
scoreboard objectives add Caught_Fishes minecraft.custom:minecraft.fish_caught "Fish Caught"
scoreboard objectives add Fur_Interactions minecraft.custom:minecraft.interact_with_furnace "Furnace Interactions"
scoreboard objectives add Hop_Inspections minecraft.custom:minecraft.inspect_hopper "Hopper Inspections"
scoreboard objectives add Dist_on_Horse minecraft.custom:minecraft.horse_one_cm "Distance on Horse in cm"
scoreboard objectives add Items_Enchanted minecraft.custom:minecraft.enchant_item "Items Enchanted"
scoreboard objectives add Dist_on_Minecart minecraft.custom:minecraft.minecart_one_cm "Distance in Minecart in cm"
scoreboard objectives add Distance_on_Pig minecraft.custom:minecraft.pig_one_cm "Distance on Pig in cm"
scoreboard objectives add Minutes_Played minecraft.custom:minecraft.play_one_minute "Ticks Played"
scoreboard objectives add Open_Shulk_Boxes minecraft.custom:minecraft.open_shulker_box "Opened Shulker Boxes"
scoreboard objectives add Times_Slept minecraft.custom:minecraft.sleep_in_bed "Times Slept"
scoreboard objectives add Dist_Sprinted minecraft.custom:minecraft.sprint_one_cm "Distance Sprinted in cm"
scoreboard objectives add Distance_Swum minecraft.custom:minecraft.swim_one_cm "Distance Swum in cm"
scoreboard objectives add Trad_Villagers minecraft.custom:minecraft.traded_with_villager "Traded with Villagers"
scoreboard objectives add Distance_Walked minecraft.custom:minecraft.walk_one_cm "Distance Walked in cm"
scoreboard objectives add Opened_Barrels minecraft.custom:minecraft.open_barrel "Opened Barrels"
scoreboard objectives add Bla_Interactions minecraft.custom:interact_with_blast_furnace "Blast Furnace Interactions"
scoreboard objectives add Cam_Interactions minecraft.custom:interact_with_campfire "Campfire Interactions"
scoreboard objectives add Smo_Interactions minecraft.custom:interact_with_smoker "Smoker Interactions"
scoreboard objectives add Lec_Interactions minecraft.custom:interact_with_lectern "Lectern Interactions"
scoreboard objectives add Stonecutter_Int minecraft.custom:interact_with_stonecutter "Stonecutter Interactions"
scoreboard objectives add Loom_Interact minecraft.custom:interact_with_loom "Loom Interactions"
scoreboard objectives add Cartog_Interact minecraft.custom:interact_with_cartography_table "Cartography Table Interactions"
scoreboard objectives add Anvil_Int minecraft.custom:interact_with_anvil "Anvil Interactions"
scoreboard objectives add Grindstone_Int minecraft.custom:interact_with_grindstone "Grindstone Interactions"


# mined blocks
scoreboard objectives add Stone_Mined minecraft.mined:minecraft.stone "Stone Mined"
scoreboard objectives add Debris_Mined minecraft.mined:minecraft.ancient_debris "Ancient Debris Mined"
scoreboard objectives add Diamond_Mined minecraft.mined:minecraft.diamond_ore "Diamond Ore Mined"
scoreboard objectives add Dirt_Mined minecraft.mined:minecraft.dirt "Dirt Mined"
