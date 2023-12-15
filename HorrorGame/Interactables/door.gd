extends Interactable

@onready var animation_player: AnimationPlayer = $AnimationPlayer

var is_open := false
var can_interact := true

func action_use():
	if is_open:
		close()
	else:
		open()

func close():
	is_open = false
	animation_player.play("door_close")
	
func open():
	is_open = true
	animation_player.play("door_open")
