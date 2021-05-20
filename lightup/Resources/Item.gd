extends Resource
class_name Item

signal item_changed(indexes)

export var name:String
export var texture:Texture
export (PackedScene) var passive
export (Array, PackedScene) var spells
export (Array, int) var spell_costs

export var count:=0


# export (Array, Resource) var items
