extends CharacterBody2D

var v: int = 500
var d: Vector2 = Vector2.ZERO

var can_m_act: bool = true
var can_s_act: bool = true

signal m_act
signal s_act

func _physics_process(delta):
#	position = position.round()
	pass
	
func _process(_delta):
	# 方向
	d = Input.get_vector("left","right","up","down")
	velocity = v * d
	move_and_slide()
	
	# 动作
	if Input.is_action_pressed("m_act") and can_m_act:
		can_m_act = false
		$TimerMAct.start()
		m_act.emit($Mks/MkMAct.global_position)
		
	if Input.is_action_pressed("s_act") and can_s_act:
		can_s_act = false
		$TimerSAct.start()
		s_act.emit()

func _on_timer_timeout():
	can_m_act = true


func _on_timer_s_act_timeout():
	can_s_act = true
