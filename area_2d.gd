extends Area2D

@onready var scorecount = get_node("../../Score")


func _on_body_entered(body: Node2D):
	scorecount.scoreup
