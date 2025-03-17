scoreboard players set #Min.F sp.F 999999
scoreboard players set #Min.G sp.G 999999
scoreboard players set #Min.H sp.H 999999

scoreboard players operation #Min.F sp.F < @e[tag=pathfinding,tag=!pathfinding.potential_path,predicate=sp:id] sp.F
scoreboard players operation #Min.G sp.G < @e[tag=pathfinding,tag=!pathfinding.potential_path,predicate=sp:id] sp.G
scoreboard players operation #Min.H sp.H < @e[tag=pathfinding,tag=!pathfinding.potential_path,predicate=sp:id] sp.H

execute as @e[tag=pathfinding,predicate=sp:id,sort=furthest] unless entity @n[tag=ai.wander.node,distance=..0.5] if score @s sp.F = #Min.F sp.F if score @s sp.H = #Min.H sp.H run function sp:zprivate/pathfind/algorithm/pathinteration/main
