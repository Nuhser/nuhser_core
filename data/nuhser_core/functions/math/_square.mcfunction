#> This calculates the square root of "$n nc_square" and saves it in "$i nc_square".
# Called by: ?

# reset iteration variable
scoreboard players set $i nc_square 0

# call square root calculation function
function nuhser_core:math/_square_find

# if square root is between $i and $i-1 round down the result
execute if score $tmp nc_square > $n nc_square run scoreboard players remove $i nc_square 1

# tellraw @a {"score": {"name": "$i", "objective": "nc_square"}}