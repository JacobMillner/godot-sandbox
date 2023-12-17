extends Interactable

@onready var animation_player: AnimationPlayer = $AnimationPlayer

var is_open := false
var can_interact := true

@export var is_locked := false
@export_node_path("Area3D") var key_path
var actual_key

func _ready() -> void:
	if key_path != null:
		actual_key = get_node(key_path)

func action_use():
	if is_locked and !is_instance_valid(actual_key):
		is_locked = false

	if !is_locked:
		if can_interact:
			if is_open:
				close()
			else:
				open()
	else:
		animation_player.play("door_locked")

func close():
	can_interact = false
	is_open = false
	animation_player.play("door_close")
	
func open():
	can_interact = false
	is_open = true
	animation_player.play("door_open")


func _on_animation_player_animation_finished(anim_name: StringName) -> void:
	can_interact = true
