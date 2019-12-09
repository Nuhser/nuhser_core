#> Main function of nuhser_core. Called every tick.
# Called By: #minecraft:tick <SERVER>

# store current time to constant
execute store result score $time nc_constants run time query daytime

# run every tick functions
function #nuhser_core:tick

# reset the tracking scoreboards
scoreboard players reset @a[scores={nc_sneak=1..}] nc_sneak
scoreboard players reset @a[scores={nc_coat_usage=1..}] nc_coat_usage
