extends Area2D

@onready var scorecount = get_node("../../Score")


func _on_body_entered(body: Node2D):
	scorecount.scoreup()
	var tween = create_tween()
	tween.tween_property($"../Sprite2D","modulate:a", 0, 0.5)
	await tween.finished
	queue_free()
