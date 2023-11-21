extends Node2D

var ef_test_scn: PackedScene = preload("res://scene/effect/effect_test.tscn")
var ef_test: Node = Node.new()

func _on_player_m_act(pos):
	# TODO 攻击要跟随移动方向或鼠标位置
	ef_test = ef_test_scn.instantiate()
	ef_test.position = pos
	ef_test.connect("timeup", _on_ef_m_act_timeup)
	$Effect.add_child(ef_test)

func _on_player_s_act():
	print("s_act")

func _on_ef_m_act_timeup():
	$Effect.remove_child(ef_test)
