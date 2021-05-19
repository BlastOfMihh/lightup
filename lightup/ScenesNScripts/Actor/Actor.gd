extends MBody

var dir=Vector2.ZERO


onready var sh=$SwordHandler
onready var sr=$SwordRooster

onready var ap=$AnimationPlayer
onready var sp=$Visuals/AnimatedSprite
onready var invs=get_node("Canvas/UI/InvsContainer").get_children() #[$UI/InventoryContainer, $UI/InventoryContainer2]
onready var hud=$Canvas/HUD

onready var death_screen=preload("res://Screen/DeathScreen.tscn")

func _ready():
	Globals.actor=self
	#yield(self, "ready")

func update_dir():
	dir.x = -Input.get_action_strength("move_left")+Input.get_action_strength("move_right")
	dir.y = Input.get_action_strength("move_down")-Input.get_action_strength("move_up")

func update_velos(delta):
	velos=dir*speed
	velos*=velos_multiplier/100.0

func _process(delta):
	if hp<=0:
		sm.request_state("Dead")
		get_tree().root.add_child(death_screen.instance())

func _physics_process(delta):
#	if Input.is_key_pressed(KEY_T):
#		sm.request_state("Dead")
	update_dir()
	apply_velos(delta)
 
func hurt():
	sm.request_state("Stagger")
	# print("hurrrrt")

func get_spell_number()->int:
	for i in range(0,10):
		var ss="spell"+str(i)
		# ss.push_back('0')
		if Input.is_action_pressed(ss):
			return i
	return -1
# pass
