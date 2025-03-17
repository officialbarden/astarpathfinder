tag @s add pathfinding.potential_path
kill @e[tag=!pathfinding.potential_path,tag=pathfinding]
execute unless entity @n[tag=ai.wander.node,distance=..1] run function sp:zprivate/pathfind/main