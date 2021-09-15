extends Area2D

var coin_picked1 = bool(false)
var check0 = bool(false)
var last_checkpoint = Vector2(1760, 496)
onready var next_level = get_parent().next_level

func _ready():
	connect("body_entered", self, "_on_Player_body_entered")

func _on_Player_body_entered(body):
	next_level = get_parent().next_level
	if next_level == true:
		print("s")
		check0 = true
		last_checkpoint = Vector2(1760, 496)

