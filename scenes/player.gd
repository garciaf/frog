class_name Player
extends CharacterBody2D

const SPEED = 400.0
const JUMP_VELOCITY = -900.0
@onready var animations: AnimatedSprite2D = $Sprite2D
@onready var state_machine: StateMachine = $StateMachine
@export var jump_state: State
@export var hurt_state: State

func _ready() -> void:
	# Initialize the state machine, passing a reference of the player to the states,
	# that way they can move and react accordingly
	state_machine.init(self)

func _unhandled_input(event: InputEvent) -> void:
	state_machine.process_input(event)

func jump() -> void: 
	state_machine.change_state(jump_state)
func hurt() -> void:
	state_machine.change_state(hurt_state)

func _physics_process(delta: float) -> void:
	state_machine.process_physics(delta)

func _process(delta: float) -> void:
	state_machine.process_frame(delta)
