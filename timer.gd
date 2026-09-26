extends Timer

@onready var player_script = get_parent()
# Called when the node enters the scene tree for the first time.
func cooldown():
	start()

func _on_timeout():
	player_script.dashready = true
