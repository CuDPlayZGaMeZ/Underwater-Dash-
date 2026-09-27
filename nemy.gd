extends CharacterBody2D


const SPEED = 200.0
@onready var player = get_node("../../Node2D/CharacterBody2D")
var nearplayer : bool = false
var too_close = 110



func _physics_process(_delta: float):
	var direction := Vector2(player.global_position - global_position).normalized()
	var distance = global_position.distance_to(player.global_position)
	if nearplayer and distance > too_close:
		velocity = direction * SPEED
	else:
		velocity = velocity.move_toward(Vector2.ZERO, SPEED)
	print("nearplayer:", nearplayer, " distance:", distance)

	move_and_slide()


func _on_area_2d_body_entered(body: Node2D):
	if body == player:
		nearplayer = true


func _on_area_2d_body_exited(body: Node2D):
	if body == player:
		nearplayer = false
