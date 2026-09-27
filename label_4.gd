extends Label

func _ready():
	hide()


func _on_area_2d_2_body_entered(body: Node2D):
	show()
	await get_tree().create_timer(5.0).timeout
	var tween = create_tween()
	tween.tween_property(self,"modulate:a", 0, 0.5)
