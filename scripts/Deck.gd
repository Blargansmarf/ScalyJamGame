extends Node

var hand
var drawPile
var discardPile


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
		"block",
		"block",
		"thumb"
	]
	drawPile.shuffle()

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
	if card == "thumb":
		pass #extend scale time
	
	discard(index)
	pass
