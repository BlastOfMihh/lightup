extends MBody

var dray_instancer=preload("res://ScenesNScripts/Enemies/DeathRay/DeathRay.tscn")
var angle

export var number=3
export var rot_speed=0
export var starting_angle=0
var ang=0

func _ready():
	ang=2*PI/number
	var ang2=0
	for i in range(0,number):
		var dray=dray_instancer.instance()
		dray.rotation=ang2+starting_angle
		dray.ang_speed=deg2rad(rot_speed)
		add_child(dray)
		ang2+=ang
