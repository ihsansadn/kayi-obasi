extends actor


export var stomp_impulse : = 500.0


func _on_EnemyDetector_area_entered(area):
	_velocity = calculate_stomp_velocity(_velocity, stomp_impulse)

func start(new_position):
	position = new_position
	show()
	$CollisionShape2D.disabled = false

func _on_EnemyDetector_body_entered(body):
	die()

func _physics_process(delta):
	var is_jump_interrupted : = Input.is_action_just_released("jump") and _velocity.y < 0.0
	var direction : = get_direction()
	_velocity = calculate_move_velocity(_velocity, direction, speed, is_jump_interrupted)
	_velocity = move_and_slide(_velocity, FLOOR_NORMAL)


func get_direction() -> Vector2:
	return Vector2(
		Input.get_action_strength("move_right") - Input.get_action_strength("move_left"),
		-1.0 if Input.is_action_just_pressed("jump") and is_on_floor() else 1.0
	)

func calculate_move_velocity(
		kecepatan_linear: Vector2,
		direction: Vector2,
		speed: Vector2,
		is_jump_interrupted: bool
	) -> Vector2:
	var out : = kecepatan_linear
	out.x = speed.x * direction.x / 1.8
	out.y += gravitasi * get_physics_process_delta_time() / 1.2
	if direction.y == -1.0:
		out.y = speed.y * direction.y
	if is_jump_interrupted:
		out.y = 0.0
	return out


func calculate_stomp_velocity(linear_velocity: Vector2, impulse: float) -> Vector2:
	var out : = linear_velocity
	out.y = -impulse
	return out



func _on_EnterNewLevel_area_entered(area):
	pass # Replace with function body.


func die() -> void:
	PlayerData.deaths += 1
	queue_free()
