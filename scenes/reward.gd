extends Area2D

@onready var ui: Node = %UI


func _on_body_entered(body: Node2D) -> void:

	if (body.name == "MainCharacter"):
		get_tree().reload_current_scene()
