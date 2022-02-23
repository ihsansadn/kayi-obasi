extends Area2D

onready var anim_player = get_node("AnimationPlayer")

export var score: = 100

func _on_body_entered(body: Node) -> void:
	PlayerData.score += score
	anim_player.play("fade_out")
