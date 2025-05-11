extends State

@export
var idle_state: State
@export
var fall_state: State
@export var expulse_force: float = 400.0


func enter() -> void:
	super()
	
func process_physics(delta: float) -> State:
	parent.animations.animation = "hurting"
	
	if parent.is_on_floor():
		return idle_state
	return fall_state
