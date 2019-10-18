#
# Desc.: Remove all scoreboards creted by nuhser_core.
# Called By: player
# @s: player
#

#give message
tellraw @a ["",{"text":"Start uninstallation...","color":"dark_purple"}]
tellraw @a ["",{"text":"Removing all scoreboards for Nuhser Core...","color":"yellow"}]

#main scoreboards
scoreboard objectives remove nc_coat_usage
scoreboard objectives remove nc_sneak_tick
scoreboard objectives remove nc_sneak_second
scoreboard objectives remove nc_square
scoreboard objectives remove nuhser_rng
scoreboard objectives remove nuhser_constants
scoreboard objectives remove nuhser_id
scoreboard objectives remove help

#generals
scoreboard objectives remove Deaths
scoreboard objectives remove Player_Kills
scoreboard objectives remove Total_Kills
scoreboard objectives remove Health
scoreboard objectives remove Level

#statistics
scoreboard objectives remove Animals_Bred
scoreboard objectives remove Distance_Flown
scoreboard objectives remove Distance_on_Boat
scoreboard objectives remove Brew_Interaction
scoreboard objectives remove Filled_Cauldrons
scoreboard objectives remove Opened_Chests
scoreboard objectives remove CT_Interaction
scoreboard objectives remove Dist_Crouched
scoreboard objectives remove Damage_Dealt
scoreboard objectives remove Damage_Taken
scoreboard objectives remove Disp_Inspections
scoreboard objectives remove Droped_Items
scoreboard objectives remove Drop_Inspections
scoreboard objectives remove Open_Enderchest
scoreboard objectives remove Caught_Fishes
scoreboard objectives remove Fur_Interactions
scoreboard objectives remove Hop_Inspections
scoreboard objectives remove Dist_on_Horse
scoreboard objectives remove Items_Enchanted
scoreboard objectives remove Dist_on_Minecart
scoreboard objectives remove Distance_on_Pig
scoreboard objectives remove Minutes_Played
scoreboard objectives remove Open_Shulk_Boxes
scoreboard objectives remove Times_Slept
scoreboard objectives remove Dist_Sprinted
scoreboard objectives remove Distance_Swum
scoreboard objectives remove Trad_Villagers
scoreboard objectives remove Distance_Walked
scoreboard objectives remove Opened_Barrels
scoreboard objectives remove Bla_Interactions
scoreboard objectives remove Cam_Interactions
scoreboard objectives remove Smo_Interactions
scoreboard objectives remove Lec_Interactions
scoreboard objectives remove Stonecutter_Int
scoreboard objectives remove Loom_Interact
scoreboard objectives remove Cartog_Interact

#mined blocks
scoreboard objectives remove Stoned_Mined
scoreboard objectives remove Dirt_Mined

#give message
tellraw @a ["",{"text":"Nuhser Core successful uninstalled!","color":"green"}]
tellraw @a ["",{"text":"Starting uninstallation of all nusher mods...","color":"dark_purple"}]

#uninstall every other nuhser mod
function #nuhser_core:uninstall

#give message
tellraw @a ["",{"text":"All nuhser mods successful uninstalled!","color":"green"}]

#disable nuhser_core
datapack disable "file/nuhser_core"
