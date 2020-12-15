#> Main function of nuhser_core. Called every tick.
# Called By: #minecraft:tick <SERVER>


# store current time to constant
execute store result score $time nc_constants run time query daytime

# run every tick functions
function #nuhser_core:tick

# tick rays
function nuhser_core:ray_casting/_move

# reset the tracking scoreboards
scoreboard players reset @a[scores={nc_sneak_tick=1..}] nc_sneak_tick
scoreboard players reset @a[scores={nc_coas_usage=1..}] nc_coas_usage
scoreboard players reset @a[scores={nc_foas_usage=1..}] nc_foas_usage
