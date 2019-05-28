#
# Desc.: Gives new players their UNID.
# Called By: nuhser_core:second
# @s: player
#

#increse the counter and give the new player his id
scoreboard players add $counter nuhser_id 1
scoreboard players operation @s nuhser_id = $counter nuhser_id
