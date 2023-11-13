extends Node

var hand
var drawPile
var discardPile



# Called when the node enters the scene tree for the first time.
func _ready():
	### set up init deck
	drawPile = [
		"coindmg1",
		"stab",
		"stab",
		"stab",
		"stab",
		"block",
		"block",
		"block"
	]
	drawPile.shuffle()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func draw(num):
	for n in num:
		if drawPile.is_empty():
			drawPile.append_array(discardPile)
			drawPile.shuffle()
			discardPile.clear()
		hand.append(drawPile.pop_back())

func discard(index):
	discardPile.append(hand[index])
	hand.remove_at(index)

func play(index):
	var card = hand[index]
	
	if card == "stab":
		pass #stab them
	if card == "block":
		pass #block damage
	if card == "coindmg1":
		pass #tip scale dmg +1
	
	discard(index)
	pass
