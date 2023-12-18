extends CharacterBody2D

@export var v: Vector2

var g: int = Global.gravity
var i: int = 0

func _physics_process(_delta):
	var d = Input.get_vector("left","right","up","down")
	var is_jump = Input.is_action_just_pressed("jump")
	var is_atk = Input.is_action_just_pressed("m_act")
	var is_dash = Input.is_action_just_pressed("s_act")

	velocity.x = d.x * v.x

	if not is_on_floor():
		velocity.y += g
	elif is_jump:
		velocity.y -= v.y
	else:
		velocity.y = 0

	i += 1
	if i % 20 == 0:
		print(velocity)

	move_and_slide()
