#> Sets up all scoreboards needed and initializes start values.
# Called By: #minecraft:load <SERVER>


tellraw @a ["",{"text":"nuhser_core: Start initialization...","color":"dark_purple"}]

# create carrot_on_a_stick, warped_fungus_on_a_stick and sneak usage tracker
tellraw @a ["",{"text":"nuhser_core: Creating tracking-scoreboards for sneaking, carrot_on_a_stick and warped_fungus_on_a_stick...","color":"yellow"}]

scoreboard objectives add nc_coas_usage minecraft.used:minecraft.carrot_on_a_stick "Carrot on a Stick Used"
scoreboard objectives add nc_foas_usage minecraft.used:minecraft.warped_fungus_on_a_stick "Warped Fungus on a Stick Used"
scoreboard objectives add nc_sneak_tick minecraft.custom:minecraft.sneak_time "Sneaked In Last Tick"
scoreboard objectives add nc_sneak_second minecraft.custom:minecraft.sneak_time "Sneaked In Last Second"

# create scoreboards for ray casting
tellraw @a ["",{"text":"nuhser_core: Creating scoreboards for ray-casting...","color":"yellow"}]

scoreboard objectives add nc_ray_yaw dummy "Rays' Yaw"
scoreboard objectives add nc_ray_pitch dummy "Rays' Pitch"

# create trigger for help-functions
tellraw @a ["",{"text":"nuhser_core: Creating trigger for help-functions...","color":"yellow"}]

scoreboard objectives add help trigger "Help-Trigger"

# create RNG scoreboard
tellraw @a ["",{"text":"nuhser_core: Setting up rng...","color":"yellow"}]

scoreboard objectives add nc_rng dummy "RNG-Scoreboard"

# set RNG constants
scoreboard players add $next nc_rng 0
scoreboard players set $multiplier nc_rng 252149039
scoreboard players set $increment nc_rng 100000
scoreboard players set $max nc_rng 100

# create math scoreboards
tellraw @a ["",{"text":"nuhser_core: Setting up math...","color":"yellow"}]

scoreboard objectives add nc_square dummy "Square Root Calculation-Scoreboard"

# create the UNID scoreboard
tellraw @a ["",{"text":"nuhser_core: Setting up the Unique-Nuhser-ID system...","color":"yellow"}]

scoreboard objectives add nc_id dummy "UNID-List"
scoreboard players add $counter nc_id 0

# create constants
tellraw @a ["",{"text":"nuhser_core: Saving nc_constants...","color":"yellow"}]

scoreboard objectives add nc_constants dummy "Constants-Scoreboard"
scoreboard players set $-1800 nc_constants -1800
scoreboard players set $-1 nc_constants -1
scoreboard players set $0 nc_constants 0
scoreboard players set $1 nc_constants 1
scoreboard players set $2 nc_constants 2
scoreboard players set $3 nc_constants 3
scoreboard players set $4 nc_constants 4
scoreboard players set $5 nc_constants 5
scoreboard players set $6 nc_constants 6
scoreboard players set $7 nc_constants 7
scoreboard players set $8 nc_constants 8
scoreboard players set $9 nc_constants 9
scoreboard players set $10 nc_constants 10
scoreboard players set $20 nc_constants 20
scoreboard players set $90 nc_constants 90
scoreboard players set $100 nc_constants 100
scoreboard players set $900 nc_constants 900
scoreboard players set $1000 nc_constants 1000
scoreboard players set $1800 nc_constants 1800
scoreboard players set $3600 nc_constants 3600
scoreboard players set $10000 nc_constants 10000

# set gamerules
tellraw @a ["",{"text":"nuhser_core: Changing gamerules for commandBlockOutput, disableElytraMovementCheck and spawnRadius...","color":"yellow"}]

gamerule commandBlockOutput false
gamerule disableElytraMovementCheck true
gamerule spawnRadius 2

# initialize all fun counters
tellraw @a ["",{"text":"nuhser_core: Initializing additional counters...","color":"yellow"}]

function nuhser_core:_initialize_counters

tellraw @a ["",{"text":"nuhser_core: Successful initialized!","color":"green"}]

# schedule nuhser_core:second to run in one second
schedule function nuhser_core:_second 1s

tellraw @a ["",{"text":"nuhser_core: Scheduled #nuhser_core:second to run once every second!","color":"green"}]

# initialize all other nuhser mods
tellraw @a ["",{"text":"nuhser_core: Initializing all other nuhser mods...","color":"dark_purple"}]

function #nuhser_core:init

# end message
tellraw @a ["",{"text":"nuhser_core: Initialization successful!","color":"dark_purple"}]
