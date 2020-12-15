#> Checks for triggered help requests and gives output in chat.
# Called By: #nuhser_core:second <SERVER>

# enable everybody for help-trigger
scoreboard players enable @a help

# trigger help for every new player on world
execute as @a[tag=!nuhser_help] run trigger help
tag @a[tag=!nuhser_help] add nuhser_help

# write info message
tellraw @a[scores={help=1}] [{"text":"Nuhser Core Manual","underlined":true,"color":"dark_aqua"},{"text":" (v6.0.0)","underlined":false}]
tellraw @a[scores={help=1}] [{"text":"\nCongrats!","bold":true},{"text":" You play in a world that has ","bold":false},{"text":"Nuhser Core","italic":true,"bold":false},{"text":" installed.","italic":false,"bold":false}]
tellraw @a[scores={help=1}] [{"text":"Nuhser Core is the basic mod needed for all other Nuhser mods to ensure flawless execution."}]
tellraw @a[scores={help=1}] [{"text":"If you have any questions about the mods while playing, you can have this message displayed again by using \""},{"text":"/trigger help","color":"dark_purple"},{"text":"\" at any time.","color":"white"}]
tellraw @a[scores={help=1}] [{"text":"Nuhser Core provides you with over 30 different scoreboards that keep track various statistics and allow you to view them."}]
tellraw @a[scores={help=1}] [{"text":"For you as a player, all this is not that interesting. More exciting are the other Nuhser mods, of which the following are currently installed:\n"}]

# run all help functions in all nuhser mods
function #nuhser_core:help

# write end of info message
tellraw @a[scores={help=1}] [{"text":"\nFor more information on individual mods, just click on them."}]

# reset trigger scoreboard
scoreboard players set @a help 0
