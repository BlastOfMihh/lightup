extends MBody

var dray_instancer=preload("res://ScenesNScripts/Enemy/DeathRay/DeathRay.tscn")
var angle

export var number=3
var ang=0

func _ready():
	ang=2*PI/number
	var ang2=0
	for i in range(0,number):
		var dray=dray_instancer.instance()
		dray.rotation=ang2
		ang2+=ang
		add_child(dray)
