extends Node

var point = 0
@onready var points_label: Label = %PointsLabel

func add_point():
	point += 1
	points_label.text = "Points: " + str(point)
