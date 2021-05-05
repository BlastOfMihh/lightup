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
