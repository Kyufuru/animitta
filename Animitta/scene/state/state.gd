extends Node

class_name State

signal change


# 进入状态时触发
func enter() -> void:
	pass

# 离开状态时触发
func exit(to: String) -> void:
	change.emit(to)

# 在状态中按帧执行
func physics_process(_delta: float) -> void:
	pass
