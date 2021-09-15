extends Sprite

onready var sprite = get_owner().get_node("Sprite")
onready var pos = Vector2(0,0)
onready var player = get_parent().get_node("Camera2D")
var playerpos = int(0)

func follow():
	pos = player.get_position()
	sprite.position = pos
	
func _physics_process(delta):
	follow()
	
