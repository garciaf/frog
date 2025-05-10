extends Area2D

@onready var ui: Node = %UI


func _on_body_entered(body: Node2D) -> void:

	if (body.name == "MainCharacter"):
		queue_free()
		ui.add_point()
