extends Node

# 状态机类, 用于状态管理及转移
class_name StateMachine

# 当前状态
var cur_sta: State
# 状态列表
var stas: Dictionary


func _ready() -> void:
	# 初始化状态机节点下的所有状态节点
	for sta in get_children():
		if sta is State:
			# 添加状态列表
			stas[sta.name] = sta
			# 连接转移信号
			sta.change.connect(_on_changed)

func _physics_process(delta: float) -> void:
	if cur_sta:
		cur_sta.physics_process(delta)

# 状态转移
func _on_changed(to : String) -> void:
	remove_child(cur_sta)
	cur_sta = stas[name]
	add_child(cur_sta)
	cur_sta.enter()
