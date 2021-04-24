extends Node

onready var	rooster = get_parent().get_node("SwordRooster")
onready var sword_instancer = preload("es://ScenesNScripts/Sword/ActualSword/Sword.tscn")

export var sword_count=3
var ind=0
var swords=[]

func add_sword():
	var swrd=sword_instancer.instance()
	swords.push_back(swrd)
	add_child(swrd)
	return swrd

func _ready():
	for i in range(0,sword_count):
		add_sword()

	# rooster.setup(get_child_count())
	# # yield(get_tree().root, "ready")
	# var i=0
	# for swrd in get_children():
	# 	swrd.setup(rooster.get_child(i).point)
	# 	i+=1

func toogle_rotate_after_cursor():
	for x in get_children():
		if !x.sm.active_states.has("InRooster"):
			x.sm.request_state("RotateAfterCursor")
		else:
			x.sm.deactivate("RotateAfterCursor")

func attack_range():
	if !ind<get_child_count():
		return
	var cur=get_child(ind)
	ind+=1
	cur.sm.deactivate("InRooster")
	cur.sm.request_state("FollowCursor")

func retreive():
	for i in range(0,ind):
		var cur=get_child(i)
		cur.sm.request_state("InRooster")
		cur.sm.deactivate("FollowCursor")
	ind=0

func _process(delta):
	# if Input.is_action_just_pressed("attack_range") and ind<get_child_count():
	# 	pass
	# if Input.is_action_just_pressed("retreive"):
	# 	pass
	pass
