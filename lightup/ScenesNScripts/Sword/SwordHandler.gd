extends Node

onready var	rooster = get_parent().get_node("SwordRooster")
onready var sword_instancer = preload("res://ScenesNScripts/Sword/ActualSword/Sword.tscn")

export var sword_count=3
var ind=0
var swords=[]

func add_sword():
	var swrd=sword_instancer.instance()
	swords.push_back(swrd)
	add_child(swrd)
	rooster.add_pos()
	rooster.setup_angles()
	swrd.setup(rooster.get_child(get_child_count()-1).point)
	return swrd

func _ready():
	for i in range(0,sword_count):
		add_sword()
	# # yield(get_tree().root, "ready")
	# var i=0
	# for swrd in get_children():
	# 	swrd.setup(rooster.get_child(i).point)
	# 	i+=1

func use_sword(dest:Vector2):
	if swords.size()==0: return
	var swrd=swords.back()
	swrd.p2death=dest
	swrd.sm.request_state("ChaseThenDie")
	swords.pop_back()
	rooster.setup_angles()

# legacy:
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
	if Input.is_action_just_pressed("retreive"):
		use_sword(Vector2(0,30))
	if Input.is_key_pressed(KEY_9):
		add_sword()
