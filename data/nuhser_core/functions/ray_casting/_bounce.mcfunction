#> Function for calculating the bouncing of bouncy rays.
# Called By: nuhsercore:ray_casting/_move <RAY>

# say foo

# tag ray as unbounced
tag @s add bounce

# hit south of block?
execute as @s[tag=bounce] if score @s nc_ray_yaw matches -1800..-900 run scoreboard players operation $tmp nc_ray_yaw = $-1800 nc_constants
execute as @s[tag=bounce] if score @s nc_ray_yaw matches -1800..-900 run scoreboard players operation $tmp nc_ray_yaw -= @s nc_ray_yaw
execute as @s[tag=bounce] if score @s nc_ray_yaw matches -1800..-900 run scoreboard players operation @s nc_ray_yaw = $tmp nc_ray_yaw

execute as @s[tag=bounce] if score @s nc_ray_yaw matches 900..1800 run scoreboard players operation $tmp nc_ray_yaw = $1800 nc_constants
execute as @s[tag=bounce] if score @s nc_ray_yaw matches 900..1800 run scoreboard players operation $tmp nc_ray_yaw -= @s nc_ray_yaw
execute as @s[tag=bounce] if score @s nc_ray_yaw matches 900..1800 run scoreboard players operation @s nc_ray_yaw = $tmp nc_ray_yaw

execute as @s[tag=bounce] store result entity @s Rotation[0] float 0.1 run scoreboard players get $tmp nc_ray_yaw
execute as @s[tag=bounce] if block ^ ^ ^.25 #minecraft:air run tag @s remove bounce

execute as @s[tag=bounce] store result entity @s Rotation[0] float 0.1 run scoreboard players get @s nc_ray_yaw

# hit top of block?
execute as @s[tag=bounce] if score @s nc_ray_pitch matches 0..900 run scoreboard players operation $tmp nc_ray_pitch = @s nc_ray_pitch
execute as @s[tag=bounce] if score @s nc_ray_pitch matches 0..900 run scoreboard players operation $tmp nc_ray_pitch *= $-1 nc_constants

execute as @s[tag=bounce] store result entity @s Rotation[1] float 0.1 run scoreboard players get $tmp nc_ray_pitch
execute as @s[tag=bounce] if block ^ ^ ^.25 #minecraft:air run tag @s remove bounce

execute as @s[tag=bounce] store result entity @s Rotation[1] float 0.1 run scoreboard players get @s nc_ray_pitch

# hit bottom of block?
execute as @s[tag=bounce] if score @s nc_ray_pitch matches -900..0 run scoreboard players operation $tmp nc_ray_pitch = @s nc_ray_pitch
execute as @s[tag=bounce] if score @s nc_ray_pitch matches -900..0 run scoreboard players operation $tmp nc_ray_pitch *= $-1 nc_constants

execute as @s[tag=bounce] store result entity @s Rotation[1] float 0.1 run scoreboard players get $tmp nc_ray_pitch
execute as @s[tag=bounce] if block ^ ^ ^.25 #minecraft:air run tag @s remove bounce

execute as @s[tag=bounce] store result entity @s Rotation[1] float 0.1 run scoreboard players get @s nc_ray_pitch