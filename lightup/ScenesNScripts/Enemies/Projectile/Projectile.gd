extends MBody

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
	die()

func _on_AnimatedSprite_animation_finished():
	dead=true
