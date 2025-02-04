extends Actor
class_name Character

@export var equipment : Equipment

# Get stat by alias to save duplication of code
func get_stat_total(stat_id : int):
	var _total = 0
	# add base value
	_total += stats.get_stat(stat_id)
	# add equipment stats
	_total += equipment.get_equipment_stat_total(stat_id)
	return _total
