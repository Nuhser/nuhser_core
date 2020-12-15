#> Function to move area effect clouds for ray casting. Called every tick.
# Called By: nuhser_core:tick <SERVER>

#> Possible Ray Tags:
# stabil:           ray doesn't stop on blocks or mobs
# semi_stabil:      ray doesn't stop on plant blocks or liquids (e.g. flowers, tall grass, ...)
# ignore_mobs:      ray doesn't stop on mobs
# bouncy:           ray bounces of of blocks (doesn't work at the moment)


#> test-functions
execute as @p[scores={nc_coas_usage=1..}] at @s run summon minecraft:area_effect_cloud ^ ^1.5 ^.75 {Duration: 200, Tags: ["ray"]}
execute as @p[scores={nc_foas_usage=1..}] at @s run summon minecraft:area_effect_cloud ^ ^1.5 ^.75 {Duration: 200, Tags: ["ray", "semi_stabil"]}

execute as @e[type=minecraft:area_effect_cloud, tag=ray, tag=!stabil, tag=!semi_stabil, tag=!bouncy] at @s run particle minecraft:composter ~ ~ ~ .05 0 .05 1 5 force @a
execute as @e[type=minecraft:area_effect_cloud, tag=ray, tag=stabil] at @s run particle minecraft:dripping_obsidian_tear ~ ~ ~ .05 0 .05 1 5 force @a
execute as @e[type=minecraft:area_effect_cloud, tag=ray, tag=semi_stabil] at @s run particle minecraft:dripping_obsidian_tear ~ ~ ~ .05 0 .05 1 5 force @a
execute as @e[type=minecraft:area_effect_cloud, tag=ray, tag=bouncy] at @s run particle minecraft:dripping_obsidian_tear ~ ~ ~ .05 0 .05 1 5 force @a

execute as @e[type=minecraft:area_effect_cloud, tag=ray, tag=dead] at @s run particle minecraft:end_rod ~ ~ ~ 0 0 0 .1 100 force @a

# execute as @e[type=minecraft:area_effect_cloud, tag=ray] at @s run playsound minecraft:entity.generic.extinguish_fire master @a ~ ~ ~ .1
#> end of test-functions

# remove dead rays
kill @e[type=minecraft:area_effect_cloud, tag=ray, tag=dead]

# rotate new rays
execute as @e[type=minecraft:area_effect_cloud, tag=ray, nbt={Age: 0}] at @s run data modify entity @s Rotation set from entity @p Rotation

# save rays yaw and pitch
execute as @e[type=minecraft:area_effect_cloud, tag=ray] at @s store result score @s nc_ray_yaw run data get entity @s Rotation[0] 10
execute as @e[type=minecraft:area_effect_cloud, tag=ray] at @s store result score @s nc_ray_pitch run data get entity @s Rotation[1] 10

# mark ray as dead when in block
execute as @e[type=minecraft:area_effect_cloud, tag=ray, tag=!stabil, tag=!bouncy] at @s unless block ~ ~ ~ #minecraft:air run tag @s add dead

# remove dead mark from semi stabil rays if in passable block
execute as @e[type=minecraft:area_effect_cloud, tag=ray, tag=semi_stabil, tag=dead] at @s if block ~ ~ ~ #minecraft:ray_pass_through run tag @s remove dead

# mark ray as dead when in mob
execute as @e[type=minecraft:area_effect_cloud, tag=ray, tag=!stabil, tag=!ignore_mobs] at @s if entity @e[type=#all_mobs, distance=..1] run tag @s add dead

# bounce bouncy rays back when in block
# execute as @e[type=minecraft:area_effect_cloud, tag=ray, tag=bouncy, tag=!semi_stabil] at @s unless block ~ ~ ~ #minecraft:air run function nuhser_core:ray_casting/_bounce
# execute as @e[type=minecraft:area_effect_cloud, tag=ray, tag=bouncy, tag=semi_stabil] at @s unless block ~ ~ ~ #minecraft:air unless block ~ ~ ~ #minecraft:ray_pass_through run function nuhser_core:ray_casting/_bounce

# move rays
execute as @e[type=minecraft:area_effect_cloud, tag=ray] at @s run tp @s ^ ^ ^.25