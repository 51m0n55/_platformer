extends Node2D

var coin = int(0)
onready var coin1 = get_node("coin1").get("coin_picked1")
onready var coin1_ = bool(false)
onready var coin2 = get_node("coin2").get("coin_picked2")
onready var coin2_ = bool(false)


func coins():
	if coin1_ == false:
		coin1 = get_node("coin1").get("coin_picked1")
		
	elif coin1 == true:
		print(coin1)
		coin = coin + 1
		coin1_ = true
		coin1 = false
		print("coin1 picked")
		print(coin)
		get_node("Player/Camera2D/Coinz").text = str(coin)

	elif coin2_ == false:
		coin2 = get_node("coin2").get("coin_picked2")

	elif coin2 == true:
		print(coin2)
		coin = coin + 1
		coin2_ = true
		coin2 = false
		print("coin2 picked")
		print(coin)
		get_node("Player/Camera2D/Coinz").text = str(coin)

func _physics_process(delta):
	coins()
