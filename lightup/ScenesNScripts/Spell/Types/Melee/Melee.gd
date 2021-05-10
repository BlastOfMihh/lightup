extends SpellType

onready var pr=get_parent()
onready var ap=$AnimationPlayer
var ap_finished=false

func enter_idle()->void:
	# print("hello there")
	pass
func exit_idle()->void:
	pass
func during_idle()->void:
	rotation = (Globals.actor.global_position-get_global_mouse_position()).angle()+PI
	pass
func get_transition_idle():
	if Input.is_action_pressed("attack"):
		return "Casting"
	return null


func enter_casting()->void:
	pass
func exit_casting()->void:
	pass
func during_casting()->void:
	pass
func get_transition_casting():
	return "Ready"
	return null

export var dash_init_speed=300
export var dash_friction=950
export var playback_speed=6


func enter_ready()->void:
	var dash=pr.sm.request_state("Dash")
	# print("hi0")
	if dash:
		dash.dash_vector=Vector2(cos(global_rotation), sin(global_rotation))*dash_init_speed
		dash.friction=dash_friction
		dash.enter_state([])
	ap.play("attack")
	ap.playback_speed=6
	ap_finished=false
	pass
func exit_ready()->void:
	rotation = (Globals.actor.global_position-get_global_mouse_position()).angle()+PI
	pass
func during_ready()->void:
	pass
func get_transition_ready():
	if ap_finished:
		return "Idle"
	return null


func _on_AnimationPlayer_animation_finished(anim_name):
	ap_finished=true
	# ap.stop()
	pass # Replace with function body.
