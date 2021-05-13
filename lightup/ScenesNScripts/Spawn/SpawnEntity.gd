extends Node2D

export(PackedScene) var entity

onready var sp=$AnimatedSprite

func _ready():
	sp.play("default")

func _on_AnimatedSprite_animation_finished():
	var ent=entity.instance()
	ent.position=position
	get_parent().add_child(ent)
	queue_free()
	
