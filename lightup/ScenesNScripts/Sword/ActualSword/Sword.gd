extends MBody

onready var sm=$StateMachine
onready var sp=$VisualsTerraria/AnimatedSprite

onready var cs_floater=$CSFloater
onready var cs_shield=$CSShield

var point2rooster

export var speed=5

func setup(point:Position2D):
	point2rooster=point
	# speed=rand_range(3,5)

func look_at_mouse():
	self.rotation=PI/2+(Globals.actor.global_position-self.get_global_mouse_position()).angle()

func chase_rooster(delta):
	if point2rooster:
		velos=(point2rooster.global_position-position)*speed

func _physics_process(delta):
	velos=move_and_slide(velos)
