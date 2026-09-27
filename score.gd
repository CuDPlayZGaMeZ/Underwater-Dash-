extends Node
var score = 0
@onready var label = get_node("../CanvasLayer/Scorebel")

func scoreup():
	score += 1
	label.text = str(score)
	print(score)
