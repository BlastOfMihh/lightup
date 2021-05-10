extends Node2D

export var dsz = Vector2(10,10)
export var csz = Vector2(50,20)

var map:=[[DungeonCell.new()]]
var objectives=[]

var base_pos=Vector2()

func _ready():
	map.clear()
	var pos=Vector2(0,0)
	for i in range(0,dsz.y):
		map.push_back([])
		for j in range(0, dsz.x):
			var dc=DungeonCell.new()
			dc.setup(csz, pos)
			pos+=Vector2(csz.x,0)
			map[i].push_back(dc)
			add_child(dc)
		pos+=Vector2(0,csz.y)
		pos.x=0

	#for d
