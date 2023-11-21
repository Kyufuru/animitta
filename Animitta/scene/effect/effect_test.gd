extends Area2D

signal timeup

func _ready():
	$Timer.start()

func _on_timer_timeout():
	timeup.emit()
