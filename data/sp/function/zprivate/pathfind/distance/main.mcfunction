execute if entity @n[tag=ai.wander.node,distance=..2] run return fail

execute store result score #start.x sp.VALUES run data get entity @s Pos[0] 1000
execute store result score #start.y sp.VALUES run data get entity @s Pos[1] 1000
execute store result score #start.z sp.VALUES run data get entity @s Pos[2] 1000

# G = START POINT -> CURRENT POINT
execute as @n[limit=8,tag=pathfinding,tag=!pathfinding.potential_path,predicate=sp:id] at @s run function sp:zprivate/pathfind/distance/g
# H = CURRENT POINT -> GOAL POINT
execute as @n[limit=8,tag=pathfinding,tag=!pathfinding.potential_path,predicate=sp:id] at @s run function sp:zprivate/pathfind/distance/h
# F = G + H
execute as @n[limit=8,tag=pathfinding,tag=!pathfinding.potential_path,predicate=sp:id] at @s run function sp:zprivate/pathfind/distance/f
#> Begin Pathfinding:
function sp:zprivate/pathfind/algorithm/main
