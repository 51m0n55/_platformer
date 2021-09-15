extends Area2D

var coin_picked2 = bool(false)

func _ready():
	connect("body_entered", self, "_on_Player_body_entered")

func _on_Player_body_entered(body):
	if coin_picked2 == false:
		print("coin picked")
		coin_picked2 = true


		

