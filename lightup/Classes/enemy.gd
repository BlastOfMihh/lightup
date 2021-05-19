extends MBody
class_name Enemy

onready var hurtb=$HurtBox

#var dist2actor=INF

export var attack_range:=70
export var damage:=20
export var fire_time:=2

func _ready():
	hurtb.connect("area_entered", self, "_on_HurtBox_area_entered")

func _on_HurtBox_area_entered(area):
	damage(area.get_parent().damage)
 
	
func die():
	pass
