extends Node

var point = 0
var lives = 3
@onready var points_label: Label = %PointsLabel
@export var hearts: Array[Node]
func decrease_health():
	lives -= 1
	for h in 3:
		if (h < lives):
			hearts[h].show()
		else: 
			hearts[h].hide()
		
	if(lives == 0): 
		get_tree().reload_current_scene()

func add_point():
	point += 1
	points_label.text = str(point)
