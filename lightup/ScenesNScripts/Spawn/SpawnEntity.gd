extends Node2D

export(PackedScene) var entity

onready var sp=$AnimatedSprite
export var one_shot=false

func _ready():
	pass
func spawn():
	if one_shot:
		_on_AnimatedSprite_animation_finished()
	sp.play("default")

func _on_AnimatedSprite_animation_finished():
	var ent=entity.instance()
	ent.position=position
	get_parent().add_child(ent)
	queue_free()
	
