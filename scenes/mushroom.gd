extends RigidBody2D
@onready var game_manager: Node = %GameManager
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_animated_sprite_2d_animation_finished() -> void:
	queue_free() # Replace with function body.


func _on_hurt_box_body_entered(body: Node2D) -> void:
	if (body.name == "MainCharacter"):
		animated_sprite_2d.play("hurting")
		body.jump()


func _on_hit_box_body_entered(body: Node2D) -> void:
	if (body.name == "MainCharacter"):
		body.hurt()
		game_manager.decrease_health()
