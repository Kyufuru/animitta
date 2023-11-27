extends CharacterBody2D

@export var cur_state: int

@export var jump_speed: int
@export var speed: int
@export var mass: int

const x_msk := Vector2(1, 0)


func _physics_process(delta):
	press()
	act(delta)
	move(delta)

## 处理按键
func press() -> void:
	if Input.is_action_just_pressed("jump"):
		cur_state = %Physics.States.JUMP


func act(_dt: float) -> void:
	if cur_state == %Physics.States.JUMP:
		velocity.y += jump_speed * %Physics.gravity


## 处理物理移动
func move(_dt: float) -> void:
	velocity = x_msk * speed * Input.get_vector(
		"left","right","up","down") # 移动
	velocity.y += mass * %Physics.gravity # 重力
	move_and_slide()
