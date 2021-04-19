extends KinematicBody2D

var velos=Vector2.ZERO
var dir:=Vector2.ZERO
var gravity=20

func add_velos(x:Vector2):
	velos+=x

func add_gravity():
	velos.y+=gravity

func multiply_velos():
	velos*=1.05

func _physics_process(delta):

	if Input.is_action_just_pressed("ui_up"):
		add_velos(Vector2(0,-200))
	if Input.is_action_just_pressed("ui_down"):
		add_velos(Vector2(0,200))
	if Input.is_action_just_pressed("ui_left"):
		add_velos(Vector2(-200,0))
	if Input.is_action_just_pressed("ui_right"):
		add_velos(Vector2(200,0))
	# add_gravity()

	# velos.y=min(max(velos.y,-10000), 10000)
	# velos.x=min(max(velos.x,-10000), 10000)
	var collision=move_and_collide(velos*delta)
	if collision:
		velos=velos.bounce(collision.normal)
		# velos*=0.99
		# multiply_velos()
