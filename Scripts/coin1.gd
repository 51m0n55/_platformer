extends Area2D

var coin_picked1 = bool(false)

func _ready():
	connect("body_entered", self, "_on_Player_body_entered")

func _on_Player_body_entered(body):
	if coin_picked1 == false:
		print("coin picked")
		coin_picked1 = true


		
