extends Node

var health
var maxHandSize
var turnDraw

# Called when the node enters the scene tree for the first time.
func _ready():
	health = 30
	maxHandSize = 7
	turnDraw = 5

# ignore for full turn based gameplay
func _process(delta):
	pass
