extends KinematicBody2D

onready var player = get_owner().get_node("Player")
var playerpos = Vector2(0,0)
var last_checkpoint = Vector2(100,500)
onready var check0 = get_parent().get_node("Check0").get("check0")
var check0_ = bool(false)
export (int) var speed = 350
export (int) var jump_speed = -1440
export (int) var gravity = 6000

var velocity = Vector2.ZERO
#Vector2(100, 500)
func respawn():
	print("respawned")
	player.position = last_checkpoint

func respawn_where():
	if check0_ == false:
		check0 = get_parent().get_node("Check0").get("check0")
	if check0 == true:
		last_checkpoint = get_parent().get_node("Check0").get("last_checkpoint")
		check0 = false
		check0_ = true
		respawn()
		
func in_void():
	playerpos = player.get_position()
	if playerpos[1] > 800:
		print("fell")
		respawn()
func get_input():
	velocity.x = 0
	if Input.is_action_pressed("move_right"):
		velocity.x += speed
	if Input.is_action_pressed("move_left"):
		velocity.x -= speed
	if Input.is_action_just_pressed("jump"):
		if is_on_floor():
			velocity.y = jump_speed

func _physics_process(delta):
	get_input()
	respawn_where()
	in_void()
	velocity.y += gravity * delta
	velocity = move_and_slide(velocity, Vector2.UP)


