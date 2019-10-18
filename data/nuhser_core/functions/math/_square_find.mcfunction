#> This function is used as a while loop which adds 1 to $i until it is equal or bigger than the square root of $n.
# Called by: nuhser_core:math/square

# add 1 to $i
scoreboard players add $i nc_square 1

# calculate $i^2
scoreboard players operation $tmp nc_square = $i nc_square
scoreboard players operation $tmp nc_square *= $i nc_square

# compare $i^2 to $n
execute if score $tmp nc_square < $n nc_square run function nuhser_core:math/_square_find