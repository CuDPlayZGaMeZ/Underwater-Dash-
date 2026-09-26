extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0
const ACCELERATION = 800
const DECELERATION = 500
var last_direction = Vector2.RIGHT
var dashready : bool = true
@onready var cooldown = $Timer
@onready var velocity_label = get_node("../../CanvasLayer/Velocity_Label")


func _physics_process(delta: float) -> void:
	var direction := Input.get_vector("move_left", "move_right", "move_up", "move_down")
	if direction:
		last_direction = direction
		velocity = velocity.move_toward(direction * SPEED, ACCELERATION * delta)
	else:
		velocity = velocity.move_toward(Vector2.ZERO, DECELERATION * delta)
	velocity_label.text = str(velocity)
	
	if Input.is_action_just_pressed("move_dash") and dashready == true:
		velocity += last_direction * 500
		dashready = false
		cooldown.cooldown()

	move_and_slide()
