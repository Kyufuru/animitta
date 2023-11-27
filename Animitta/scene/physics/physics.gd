extends Node2D

enum States {
	IDLE,
	JUMP,
	HIGH_JUMP,
	DASH,
	ATTACK,
}

@export var gravity: int

