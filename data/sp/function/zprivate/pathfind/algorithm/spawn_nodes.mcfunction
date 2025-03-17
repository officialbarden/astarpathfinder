kill @e[tag=pathfinding,tag=!pathfinding.potential_path,predicate=sp:id]
#> Return Fail:
execute if entity @n[tag=ai.wander.node,distance=..2,predicate=sp:id] run return fail

execute at @s align xyz positioned ~0.5 ~ ~0.5 rotated 90 ~ positioned ^ ^ ^1 if block ~ ~ ~ #air run summon marker ~ ~ ~ {Tags:["pathfinding",".temp"],CustomName:'"Pathfinding Marker"'}
execute at @s align xyz positioned ~0.5 ~ ~0.5 rotated 0 ~ positioned ^ ^ ^1 if block ~ ~ ~ #air run summon marker ~ ~ ~ {Tags:["pathfinding",".temp"],CustomName:'"Pathfinding Marker"'}
execute at @s align xyz positioned ~0.5 ~ ~0.5 rotated -90 ~ positioned ^ ^ ^1 if block ~ ~ ~ #air run summon marker ~ ~ ~ {Tags:["pathfinding",".temp"],CustomName:'"Pathfinding Marker"'}
execute at @s align xyz positioned ~0.5 ~ ~0.5 rotated 180 ~ positioned ^ ^ ^1 if block ~ ~ ~ #air run summon marker ~ ~ ~ {Tags:["pathfinding",".temp"],CustomName:'"Pathfinding Marker"'}

execute at @s align xyz positioned ~0.5 ~ ~0.5 rotated 0 ~ positioned ^1 ^ ^1 if block ~ ~ ~ #air run summon marker ~ ~ ~ {Tags:["pathfinding",".temp"],CustomName:'"Pathfinding Marker"'}
execute at @s align xyz positioned ~0.5 ~ ~0.5 rotated 0 ~ positioned ^-1 ^ ^1 if block ~ ~ ~ #air run summon marker ~ ~ ~ {Tags:["pathfinding",".temp"],CustomName:'"Pathfinding Marker"'}
execute at @s align xyz positioned ~0.5 ~ ~0.5 rotated 0 ~ positioned ^1 ^ ^-1 if block ~ ~ ~ #air run summon marker ~ ~ ~ {Tags:["pathfinding",".temp"],CustomName:'"Pathfinding Marker"'}
execute at @s align xyz positioned ~0.5 ~ ~0.5 rotated 0 ~ positioned ^-1 ^ ^-1 if block ~ ~ ~ #air run summon marker ~ ~ ~ {Tags:["pathfinding",".temp"],CustomName:'"Pathfinding Marker"'}

scoreboard players operation @e[tag=pathfinding,tag=.temp] sp.ID = @s sp.ID
tag @e[tag=pathfinding] remove .temp

function sp:zprivate/pathfind/distance/main