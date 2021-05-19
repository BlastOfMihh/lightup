extends Resource
class_name Inventory

export (Array,Resource)var items = [
	null, null, null,
	null, null, null,
	null, null, null
	]
signal items_changed(indexes)

func set_item(index, item):
	var prev_item=items[index]
	items[index]=item
	emit_signal("items_changed", [index])
	return prev_item


func add_item(item)->void:
	item.count+=1
	var idx=0
#	for i in items:
#		if i and i.name==item.name:
#			item.count+=1
#			set_item(idx,item)
#			return
#		idx+=1
#	idx=0
	for i in items:
		if i==null:
			set_item(idx,item)
			break
		idx+=1
#	Globals.actor.add_child(item.passive.instance())

func first_item():
	for it in items:
		if it:
			return it
	return null

func swap_items(index, target_index):
	var target_item=items[target_index]
	var item=items[index]
	items[index]=target_item
	items[target_index]=item
	emit_signal("items_changed", [index, target_index])

func remove_item(index):
	var prev_item=items[index]
	items[index]=null
	emit_signal("items_changed", [index])
	return prev_item
