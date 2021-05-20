extends Enemy

export var projectile=preload("res://ScenesNScripts/Enemies/Projectile/Projectile.tscn")
onready var pr=self
onready var sp=$Visuals/AnimatedSprite

func add_projectile():
	var prj=pr.projectile.instance()
	prj.position=pr.position
	prj.direction=-(pr.global_position - Globals.actor.global_position).normalized()
	prj.damage=damage
	pr.get_parent().add_child(prj)

