extends CharacterBody2D
class_name Player

@export var movement_speed: float = 100.0

func _process(delta: float) -> void:
	move()

func get_movement_vector() -> Vector2:
	var x_movement = Input.get_action_strength("walk_right") - Input.get_action_strength("walk_left")
	
	return Vector2(x_movement, 0)

func move() -> void:
	velocity = get_movement_vector().normalized() * movement_speed
	move_and_slide()
