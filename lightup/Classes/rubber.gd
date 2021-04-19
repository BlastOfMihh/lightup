extends Body
class_name Rubber

export var fixed:=false

var elasticty:=0.94

func _physics_process(delta):

	add_gravity()

	if fixed :
		velos=Vector2.ZERO
	var collision=move_and_collide(velos*delta)
	if collision : #and collision.collider!=prev_collider:
		velos=velos.bounce(collision.normal)
		velos*=elasticty
		if collision.collider.has_method("add_velocity"):
			collision.collider.add_velocity(Vector2(collision.normal*(-2000)))
