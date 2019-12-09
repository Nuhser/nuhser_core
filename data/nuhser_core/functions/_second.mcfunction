#> Runs ones per second.
# Called By: #nuhser_core:second <SERVER>

# store current day to constant
execute store result score $day nc_constants run time query day

# give players without a UNID their unique one
scoreboard players add @a nc_id 0
execute as @a[scores={nc_id=0}] run function nuhser_core:_give_unid

# run help function
function nuhser_core:_help

# run all other #nuhser_core:second functions
function #nuhser_core:second

# reset the tracking scoreboards
scoreboard players reset @a[scores={nc_sneak_second=1..}] nc_sneak_second

# reschedule second-function
schedule function nuhser_core:_second 1s