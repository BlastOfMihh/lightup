extends MBody

export var damage:=20.0

var direction:=Vector2(-1,0)
var dead:=false
onready var hb=$HitBox
onready var sp=$AnimatedSprite


func _ready():
	rotation=direction.angle()

func _process(delta):
	apply_velos(delta)
	if sp.animation=="die":
		velos=Vector2.ZERO
		if dead :
			queue_free()
	else: velos=direction*speed
func die():
	hb.queue_free()
	sp.play("die")

func _on_HitBox_body_entered(body):
	if body.has_method("damage"):
		body.damage(damage,body)
	die()

func _on_AnimatedSprite_animation_finished():
	dead=true


func _on_HitBox_area_entered(area):
	_on_HitBox_body_entered(area)

