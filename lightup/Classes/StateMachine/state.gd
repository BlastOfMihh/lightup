extends Node
class_name State

onready var sm=get_parent()
onready var state_name:=self.name
var pr=null

export var active:=false

var parents=0

var conflicting_states=[]
var removing_states=[]
var necessary_states=[] # strings

#copy
func _ready():
	conflicting_states=[]
	removing_states=[]
	necessary_states=[]

func get_transition():
	return null

func enter_state(old_states):
	pass

func exit_state(new_states):
	pass

func _during_state(delta):
	pass
#


func activate():
	active=true
	enter_state(false)
	sm.request_state(state_name)

func deactivate():
	active=false
	exit_state(false)

func has_dependecies()->bool:
	for x in necessary_states:
		if !sm.active_states.has(x):
			return false
	return true

func is_in_conflict()->bool:
	for x in conflicting_states:
		if sm.active_states.has(x):
			return true
	return false

func _physics_process(delta):
	# if !active: return
	# _during_state(delta)
	pass
