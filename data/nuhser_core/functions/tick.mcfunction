#
# Desc.: Main function of nuhser_core. Called every tick.
# Called By: #minecraft:tick
# @s: <SERVER>
#

#store current time to constant
execute store result score $time nuhser_constants run time query daytime

#run every nuhser_...:tick functions
function #nuhser_core:tick

#reset the tracking scoreboards
scoreboard players reset @a[scores={nc_sneak=1..}] nc_sneak
scoreboard players reset @a[scores={nc_coat_usage=1..}] nc_coat_usage
