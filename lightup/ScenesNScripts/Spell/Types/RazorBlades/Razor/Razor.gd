extends KinematicBody2D

onready var sp=$AnimatedSprite

# func _ready():
# 	play_spin()

func play_spin():
	sp.play("start_spin")
