extends Node2D

export var dsz = Vector2(10,10)
export var csz = Vector2(50,20)
export var space_between_cells=16

var map:=[[DungeonCell.new()]]
var objectives=[]

var spawn_pos=Vector2()
var dirs=[
	Vector2(0,1),
	Vector2(0,-1),
	Vector2(1,0),
	Vector2(-1,0)
	]
onready var vwall_tscn=preload("res://ScenesNScripts/Dungeon/Pieces/VWall.tscn")
onready var vwall_hole_tscn=preload("res://ScenesNScripts/Dungeon/Pieces/VWallHole.tscn")


func _ready():
	setup_cells()
	map[2][4].type="room"
	map[2][5].type="room"
	setup_room(Vector2(2,5))
	setup_room(Vector2(2,4))
	setup_room(Vector2(1,4))

func setup_room(pos:Vector2):
	var cr= map[pos.x][pos.y]
	for d in dirs:
		var nx=map[d.x+pos.x][d.y+pos.y]
		var wall
		if nx.type=="room":
			wall=vwall_hole_tscn.instance()
		else: # x.type=="none":
			wall=vwall_tscn.instance()
		wall.position=d*csz.x/2
		if(d.y):
			wall.rotation=PI/2
		cr.add_child(wall)



	pass

func setup_cells():
	map.clear()
	var pos=Vector2(0,0)
	for i in range(0,dsz.y):
		map.push_back([])
		for j in range(0,dsz.x):
			var dc=DungeonCell.new()
			dc.setup_pos(csz, pos)
			pos+=Vector2(csz.x+space_between_cells,0)
			map[i].push_back(dc)
			add_child(dc)
		pos+=Vector2(0,csz.y+space_between_cells)
		pos.x=0


	#for d
