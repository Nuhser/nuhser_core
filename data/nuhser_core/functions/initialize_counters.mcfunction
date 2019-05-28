#
# Desc.: Sets up all fun scoreboards.
# Called By: nuhser_core:initialize_counters
# @s: <SERVER>
#

#generals
scoreboard objectives add Deaths deathCount
scoreboard objectives add Player_Kills playerKillCount
scoreboard objectives add Total_Kills totalKillCount
scoreboard objectives add Health health
scoreboard objectives add Level level

#statistics
scoreboard objectives add Animals_Bred minecraft.custom:minecraft.animals_bred
scoreboard objectives add Distance_Flown minecraft.custom:minecraft.aviate_one_cm
scoreboard objectives add Distance_on_Boat minecraft.custom:minecraft.boat_one_cm
scoreboard objectives add Brew_Interaction minecraft.custom:minecraft.interact_with_brewingstand "Brewingstand_Interactions"
scoreboard objectives add Filled_Cauldrons minecraft.custom:minecraft.fill_cauldron
scoreboard objectives add Opened_Chests minecraft.custom:minecraft.open_chest
scoreboard objectives add CT_Interaction minecraft.custom:minecraft.interact_with_crafting_table "Crafting_Table_Interaction"
scoreboard objectives add Dist_Crouched minecraft.custom:minecraft.crouch_one_cm "Distance_Crouched"
scoreboard objectives add Damage_Dealt minecraft.custom:minecraft.damage_dealt
scoreboard objectives add Damage_Taken minecraft.custom:minecraft.damage_taken
scoreboard objectives add Disp_Inspections minecraft.custom:minecraft.inspect_dispenser "Dispenser_Inspections"
scoreboard objectives add Droped_Items minecraft.custom:minecraft.drop
scoreboard objectives add Drop_Inspections minecraft.custom:minecraft.inspect_dropper "Dropper_Interactions"
scoreboard objectives add Open_Enderchest minecraft.custom:minecraft.open_enderchest "Opened_Enderchest"
scoreboard objectives add Caught_Fishes minecraft.custom:minecraft.fish_caught
scoreboard objectives add Fur_Interactions minecraft.custom:minecraft.interact_with_furnace "Furnace_Interactions"
scoreboard objectives add Hop_Inspections minecraft.custom:minecraft.inspect_hopper "Hoppers_Inspections"
scoreboard objectives add Dist_on_Horse minecraft.custom:minecraft.horse_one_cm "Distance_on_Horse"
scoreboard objectives add Items_Enchanted minecraft.custom:minecraft.enchant_item
scoreboard objectives add Dist_on_Minecart minecraft.custom:minecraft.minecart_one_cm "Distance_on_Minecart"
scoreboard objectives add Distance_on_Pig minecraft.custom:minecraft.pig_one_cm
scoreboard objectives add Minutes_Played minecraft.custom:minecraft.play_one_minute
scoreboard objectives add Open_Shulk_Boxes minecraft.custom:minecraft.open_shulker_box "Opened_Shulker_Boxes"
scoreboard objectives add Times_Slept minecraft.custom:minecraft.sleep_in_bed
scoreboard objectives add Dist_Sprinted minecraft.custom:minecraft.sprint_one_cm "Distance_Sprinted"
scoreboard objectives add Distance_Swum minecraft.custom:minecraft.swim_one_cm
scoreboard objectives add Trad_Villagers minecraft.custom:minecraft.traded_with_villager "Traded_with_Villagers"
scoreboard objectives add Distance_Walked minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add Opened_Barrels minecraft.custom:minecraft.open_barrel
scoreboard objectives add Bla_Interactions minecraft.custom:interact_with_blast_furnace "Blast_Furnace_Interactions"
scoreboard objectives add Cam_Interactions minecraft.custom:interact_with_campfire "Campfire_Interactions"
scoreboard objectives add Smo_Interactions minecraft.custom:interact_with_smoker "Smoker_Interactions"
scoreboard objectives add Lec_Interactions minecraft.custom:interact_with_lectern "Lectern_Interactions"
scoreboard objectives add Stonecutter_Int minecraft.custom:interact_with_stonecutter "Stonecutter_Interactions"
scoreboard objectives add Loom_Interact minecraft.custom:interact_with_loom "Loom_Interactions"
scoreboard objectives add Cartog_Interact minecraft.custom:interact_with_cartography_table "Cartography_Table_Interactions"


#mined blocks
scoreboard objectives add Stoned_Mined minecraft.mined:minecraft.stone
scoreboard objectives add Dirt_Mined minecraft.mined:minecraft.dirt
