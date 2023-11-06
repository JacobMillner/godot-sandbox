extends CharacterBody3D

@onready var camera_3d = $Camera3D
@onready var origCamPos : Vector3 = camera_3d.position
@onready var floorcast = $FloorDetectRaycast
@onready var footstep_sound = $FootstepSound

var mouse_sense := 0.15
var direction
var speed := 4
var jump := 30.0
const GRAVITY := 5

var _delta := 0.0
var camBobSpeed := 10
var camBobUpDown := 1

var distanceFootstep := 0.0
var playFootstep := 5

func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
	$MeshInstance3D.visible = false

func _input(event):
	if event is InputEventMouseMotion:
		rotate_y(deg_to_rad(-event.relative.x * mouse_sense))
		camera_3d.rotate_x(deg_to_rad(-event.relative.y * mouse_sense))
		camera_3d.rotation.x = clamp(camera_3d.rotation.x, deg_to_rad(-89), deg_to_rad(89))

func _process(delta):
	process_camBob(delta)
	
	if floorcast.get_collider() != null:
		var walkingTerrain = floorcast.get_collider().get_parent()
		if walkingTerrain != null and len(walkingTerrain.get_groups()) > 0:
			var terraingroup = walkingTerrain.get_groups()[0]
			processGroundSounds(terraingroup)
	

func _physics_process(delta):
	process_movement(delta)

func processGroundSounds(group : String):
	if playFootstep != 100 and (int(velocity.x) != 0 or int(velocity.z) != 0):
		distanceFootstep += 0.1
		
	if distanceFootstep > playFootstep and is_on_floor():
		match group:
			"WoodTerrain":
				footstep_sound.stream = load("res://Player/Sounds/Footsteps/wood/1.ogg")
			"Grass":
				footstep_sound.stream = load("res://Player/Sounds/Footsteps/grass/1.ogg")
		footstep_sound.pitch_scale = randf_range(0.8, 1.2)
		footstep_sound.play()
		distanceFootstep = 0.0
	
func process_movement(delta):
	direction = Vector3.ZERO
	
	var h_rot = global_transform.basis.get_euler().y
	
	direction.x = -Input.get_action_strength("ui_left")+Input.get_action_strength("ui_right")
	direction.z = -Input.get_action_strength("ui_up")+Input.get_action_strength("ui_down")
	
	direction = Vector3(direction.x, 0, direction.z).rotated(Vector3.UP, h_rot).normalized()

	velocity.x = direction.x * speed
	velocity.z = direction.z * speed
	
	var jump := 30.0
	const GRAVITY := 5
	
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y += jump
	if !is_on_floor():
		velocity.y -= GRAVITY

	move_and_slide()

func process_camBob(delta):
	_delta += delta
	
	var cam_bob
	var objCam
	if direction != Vector3.ZERO:
		cam_bob = floor(abs(direction.z) + abs(direction.x)) * _delta * camBobSpeed
		objCam = origCamPos + Vector3.UP * sin(cam_bob) * camBobUpDown
	else:
		cam_bob = floor(abs(1) + abs(1)) * _delta * 0.5
		objCam = origCamPos + Vector3.UP * sin(cam_bob) * camBobUpDown * 0.1
	
	camera_3d.position = camera_3d.position.lerp(objCam, delta)
