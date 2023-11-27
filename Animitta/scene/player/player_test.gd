extends CharacterBody2D

enum States {
	IDLE,
	JUMP,
	HIGH_JUMP,
	DASH,
	ATTACK,
}
const x_msk := Vector2(1, 0)

@export var cur_state: int
@export var jump_speed: int
@export var speed: int
@export var mass: int

var g: int

func _ready():
	g = %Physics.gravity

func _physics_process(delta):
	press()
	act(delta)
	move(delta)

## 处理按键
func press() -> void:
	if Input.is_action_just_pressed("jump"):
		if cur_state != States.JUMP:
			cur_state = States.JUMP
	else:
		cur_state = States.IDLE


func act(_dt: float) -> void:
	if cur_state == States.JUMP:
		if is_on_floor():
			velocity.y -= jump_speed * g
	if cur_state == States.IDLE:
		if is_on_floor():
			velocity.y = 0


## 处理物理移动
func move(_dt: float) -> void:
	velocity.x = speed * Input.get_vector(
		"left","right","up","down").x # 移动
	if not is_on_floor():
		velocity.y += mass * g # 重力
	move_and_slide()
