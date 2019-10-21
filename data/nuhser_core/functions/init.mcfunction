#
# Desc.: Sets up all scoreboards needed and initializes start values.
# Called By: #minecraft:load
# @s: <SERVER>
#

#create carrot_on_a_stick, sneak usage tracker
tellraw @a ["",{"text":"nuhser_core: Start initialization...","color":"dark_purple"}]
tellraw @a ["",{"text":"nuhser_core: Creating tracking-scoreboards for sneaking and carrot_on_a_stick...","color":"yellow"}]

scoreboard objectives add nc_coat_usage minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add nc_sneak_tick minecraft.custom:minecraft.sneak_time
scoreboard objectives add nc_sneak_second minecraft.custom:minecraft.sneak_time

#create trigger for help-functions
tellraw @a ["",{"text":"nuhser_core: Creating trigger for help-functions...","color":"yellow"}]

scoreboard objectives add help trigger

#create RNG scoreboard
tellraw @a ["",{"text":"nuhser_core: Setting up rng...","color":"yellow"}]

scoreboard objectives add nuhser_rng dummy

#set RNG constants
scoreboard players add $next nuhser_rng 0
scoreboard players set $multiplier nuhser_rng 252149039
scoreboard players set $increment nuhser_rng 100000
scoreboard players set $max nuhser_rng 100

# create math scoreboards
tellraw @a ["",{"text":"nuhser_core: Setting up math...","color":"yellow"}]

scoreboard objectives add nc_square dummy

#create the UNID scoreboard
tellraw @a ["",{"text":"nuhser_core: Setting up the Unique-Nuhser-ID system...","color":"yellow"}]

scoreboard objectives add nuhser_id dummy
scoreboard players add $counter nuhser_id 0

#create constants
tellraw @a ["",{"text":"nuhser_core: Saving nuhser_constants...","color":"yellow"}]

scoreboard objectives add nuhser_constants dummy
scoreboard players set $-1 nuhser_constants -1
scoreboard players set $0 nuhser_constants 0
scoreboard players set $1 nuhser_constants 1
scoreboard players set $2 nuhser_constants 2
scoreboard players set $3 nuhser_constants 3
scoreboard players set $4 nuhser_constants 4
scoreboard players set $5 nuhser_constants 5
scoreboard players set $6 nuhser_constants 6
scoreboard players set $7 nuhser_constants 7
scoreboard players set $8 nuhser_constants 8
scoreboard players set $9 nuhser_constants 9
scoreboard players set $10 nuhser_constants 10
scoreboard players set $20 nuhser_constants 20
scoreboard players set $1000 nuhser_constants 100
scoreboard players set $1000 nuhser_constants 1000
scoreboard players set $1000 nuhser_constants 10000

#set gamerules
tellraw @a ["",{"text":"nuhser_core: Changing gamerules for commandBlockOutput, disableElytraMovementCheck and spawnRadius...","color":"yellow"}]

gamerule commandBlockOutput false
gamerule disableElytraMovementCheck true
gamerule spawnRadius 2

#initialize all fun counters
tellraw @a ["",{"text":"nuhser_core: Initializing additional counters...","color":"yellow"}]

function nuhser_core:initialize_counters

tellraw @a ["",{"text":"nuhser_core: Successful initialized!","color":"green"}]

#schedule nuhser_core:second to run in one second
schedule function nuhser_core:second 1s

tellraw @a ["",{"text":"nuhser_core: Scheduled #nuhser_core:second to run once every second!","color":"green"}]

#initialize all other nuhser mods
tellraw @a ["",{"text":"nuhser_core: Initializing all other nuhser mods...","color":"dark_purple"}]

function #nuhser_core:init

#end message
tellraw @a ["",{"text":"nuhser_core: Initialization successful!","color":"dark_purple"}]
