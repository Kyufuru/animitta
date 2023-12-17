extends CharacterBody2D

const x_msk := Vector2(1, 0)

@export var cur_state: int
@export var jump_speed: int
@export var speed: int
@export var mass: int

var g: int

func _ready():
	g = %Physics.gravity

func _physics_process(_delta):
	var dir = Input.get_vector("left","right","up","down")
	if not is_on_floor():
		velocity.y += mass * g # 重力
	else:
		velocity.y = 0
		if Input.is_action_just_pressed("jump"):
			velocity.y -= jump_speed * g
	
	
	#if Input.is_action_just_pressed("s_act"):
		#
		
	velocity.x = speed * dir.x # 移动
	
	move_and_slide()
	
