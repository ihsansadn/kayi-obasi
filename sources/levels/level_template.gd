extends Node2D
# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func new_game():
	get_tree().call_group("Enemy", "queue_free")
	$Player.start($Position2D.position)
