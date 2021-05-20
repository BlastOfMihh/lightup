extends Node2D

onready var spike=preload("res://ScenesNScripts/EntityComponents/States/ActorProjectile.tscn")

export var spike_nr:=6
export var radious:=180.0
var offset:=0.0

func _ready():
	radious=deg2rad(radious)
	var ang=0
	var inc=radious/spike_nr
	var sg=0
	
	for i in range(0,spike_nr):
		var prj=spike.instance()
		var rot=ang-radious/2+offset
		add_child(prj)
		prj.prj.direction=Vector2(cos(rot), sin(rot))
		ang+=inc
		sg=int(!sg)

