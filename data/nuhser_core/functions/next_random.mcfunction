#
# Desc.: Generates a random number and stores it in nuhser_rng.$next
# Called By: Various functions and entities.
# @s: <VARIOUS>
#

#generate random number
scoreboard players operation $next nuhser_rng += $time nuhser_constants
scoreboard players operation $next nuhser_rng *= $multiplier nuhser_rng
scoreboard players operation $next nuhser_rng += $increment nuhser_rng
scoreboard players operation $next nuhser_rng %= $max nuhser_rng
execute if score $next nuhser_rng <= $-1 nuhser_constants run scoreboard players operation $next nuhser_rng *= $-1 nuhser_constants
