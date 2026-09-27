extends RayCast2D

@onready var player = get_node("../../../Node2D/CharacterBody2D")
@onready var parent = get_parent()

func _physics_process(delta: float):
	var point := Vector2(player.global_position - parent.global_position)
	set_target_position(point)
	force_raycast_update()
