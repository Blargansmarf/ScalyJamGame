extends Node

var gameState
var currentLevel
var randomNum

# Called when the node enters the scene tree for the first time.
func _ready():
	randomNum.randomize()
	gameState = 0
	currentLevel = 0

