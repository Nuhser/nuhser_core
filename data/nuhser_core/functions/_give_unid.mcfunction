#> Gives new players their UNID.
# Called By: nuhser_core:second <PLAYER>

# increse the counter and give the new player his id
scoreboard players add $counter nc_id 1
scoreboard players operation @s nc_id = $counter nc_id
