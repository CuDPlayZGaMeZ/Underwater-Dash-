extends Label
var shown : bool = false

# Called when the node enters the scene tree for the first time.
func _ready():
	hide()

func _on_area_2d_body_entered(_body: Node2D):
	show()
	shown = true

func _process(_delta: float):
	if Input.is_action_just_pressed("move_dash") and shown == true:
		add_theme_color_override("font_color", Color8(31, 255, 23))
		var tween = create_tween()
		tween.tween_property(self,"modulate:a", 0, 0.5)
