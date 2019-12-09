#> Generates a random number and stores it in nc_rng.$next
# Called By: Various functions and entities. <VARIOUS>

# generate random number
scoreboard players operation $next nc_rng += $time nc_constants
scoreboard players operation $next nc_rng *= $multiplier nc_rng
scoreboard players operation $next nc_rng += $increment nc_rng
scoreboard players operation $next nc_rng %= $max nc_rng
execute if score $next nc_rng <= $-1 nc_constants run scoreboard players operation $next nc_rng *= $-1 nc_constants
