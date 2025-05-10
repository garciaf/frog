extends State

@export
var idle_state: State
@export
var move_state: State

@export var double_jump_state: State

func process_physics(delta: float) -> State:
	parent.velocity.y += gravity * delta

	var movement = Input.get_axis('left', 'right') * move_speed
	
	if Input.is_action_just_pressed('jump'):
		return double_jump_state
	
	if movement != 0:
		parent.animations.flip_h = movement < 0
	parent.animations.animation = "falling"
	parent.velocity.x = movement
	parent.move_and_slide()
	
	if parent.is_on_floor():
		if movement != 0:
			return move_state
		return idle_state
	return null
