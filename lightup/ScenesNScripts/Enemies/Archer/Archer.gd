extends Enemy

export var projectile=preload("res://ScenesNScripts/Enemies/Projectile/Projectile.tscn")
onready var pr=self

func add_projectile():
	var prj=pr.projectile.instance()
	prj.position=pr.position
	prj.direction=-(pr.global_position - Globals.actor.global_position).normalized()
	pr.get_parent().add_child(prj)
