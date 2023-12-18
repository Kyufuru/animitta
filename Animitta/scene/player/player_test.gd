extends CharacterBody2D

@export var v: Vector2

var g: int = $global/global.gravity

func _physics_process(_delta):
	var s = Input.get_vector("left","right","up","down")
	var is_jump = Input.is_action_just_pressed("jump")
	var is_atk = Input.is_action_just_pressed("m_act")
	var is_dash = Input.is_action_just_pressed("s_act")

	velocity.x = s.x * v.x

	if not is_on_floor():
		velocity.y += g
	elif is_jump:
		velocity.y -= v.y
	else:
		velocity.y = 0

	move_and_slide()
