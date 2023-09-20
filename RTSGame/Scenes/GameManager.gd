extends Node2D

var selected_unit : CharacterBody2D
var players : Array[CharacterBody2D]
var enemies : Array[CharacterBody2D]

func _input(event):
	if event is InputEventMouseButton and event.pressed:
		if event.button_index == MOUSE_BUTTON_LEFT:
			_try_select_unit()
		elif event.button_index == MOUSE_BUTTON_RIGHT:
			_try_command_unit()

func _get_selected_unit():
	var space = get_world_2d().direct_space_state
	var query = PhysicsPointQueryParameters2D.new()
	query.position = get_global_mouse_position()
	var intersection = space.intersect_point(query, 1)
	
	if !intersection.is_empty():
		return intersection[0].collider
		
	return null
	
func _try_select_unit():
	var unit = _get_selected_unit()
	if unit != null and unit.is_player:
		_select_unit(unit)
	else:
		_unslect_unit()
		

func _select_unit(unit):
	_unslect_unit()
	selected_unit = unit
	selected_unit.toggle_selection_visual(true)

func _unslect_unit():
	pass
	
func _try_command_unit():
	pass
