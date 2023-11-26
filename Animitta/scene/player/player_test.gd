extends CharacterBody2D

@export var speed: int
@export var mass: int

func _ready():
	pass


func _physics_process(_delta):
	press()
	move()

## 处理按键
func press() -> void:
#	# 动作
#	if Input.is_action_pressed("m_act") and can_m_act:
#		can_m_act = false
#		$TimerMAct.start()
#		m_act.emit($Mks/MkMAct.global_position)
#
#	if Input.is_action_pressed("s_act") and can_s_act:
#		can_s_act = false
#		$TimerSAct.start()
#		s_act.emit()
	pass

## 处理移动
func move() -> void:
	# 移动
	velocity = speed * Input.get_vector(
			"left","right","up","down")
	
	# 重力
	velocity.y += mass * $"../Physics".Gravity
	
	move_and_slide()
