kill @e[tag=pathfinding,tag=!pathfinding.potential_path]

execute as @e[tag=ai.entity] at @s unless score @s sp.ID matches -2147483648..2147483647 run function sp:global/id
execute as @e[tag=pathfinding] at @s if entity @n[tag=ai.wander.node,distance=..1] run kill @e[tag=pathdinging,tag=!pathfinging.potential_path]



