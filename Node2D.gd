extends Node2D

var coin = int(0)
var coin1tex = bool(false)
var coin2tex = bool(false)

onready var coin1 = get_node("coin1").get("coin_picked1")
onready var coin1_picked = bool(false)
onready var coin2 = get_node("coin2").get("coin_picked2")
onready var coin2_picked = bool(false)
var next_level = bool(false)


func coins():
	if coin1_picked == false:
		coin1 = get_node("coin1").get("coin_picked1")
	if coin2_picked == false:
		coin2 = get_node("coin2").get("coin_picked2")
		
	if coin1 == true:
		coin1_picked = true
		coin1 = false
		coin = coin + 1
		print("coin1")
		coin1tex = true
		
	if coin2 == true:
		coin2_picked = true
		coin2 = false
		coin = coin + 1
		print("coin2")
		coin2tex = true
	
	elif coin2tex and coin1tex == true:
		next_level = true
		

func _physics_process(delta):
	coins()
	get_node("Player/Camera2D/CanvasLayer/Coinz").text = str(coin)
