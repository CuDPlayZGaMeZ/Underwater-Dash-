extends Label

# Called when the node enters the scene tree for the first time.
func _ready():
	show()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float):
	if Input.is_action_just_pressed("move_down") or Input.is_action_just_pressed("move_left") or Input.is_action_just_pressed("move_right") or Input.is_action_just_pressed("move_up"):
		add_theme_color_override("font_color", Color8(31, 255, 23))
		var tween = create_tween()
		tween.tween_property(self,"modulate:a", 0, 0.5)
