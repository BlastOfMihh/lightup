extends State

onready var scope_tscn=preload("res://ScenesNScripts/Scope/EScope.tscn") 
var scope=null

func _ready():
	conflicting_states=[]
	removing_states=["Chase"]
	necessary_states=[]
	
	

func get_transition():
	if scope.finished():
		pr.add_projectile()
		return "Idle"
	return null

func enter_state(old_states):
	scope=scope_tscn.instance()
	pr.add_child(scope)

func exit_state(new_states):
	scope.queue_free()
	pass

func _during_state(delta):
	pass
