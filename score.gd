extends Node
var score = 0
@onready var label = get_node("../Canvaslayer/Scorebel")

func scoreup():
	score += 1
	label.text = int(score)
	print(score)
