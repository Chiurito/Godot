extends KinematicBody2D

const SPEED = 180
const GRAVITY = 35
const JUMP_FORCE = -1100

var velocity: Vector2 = Vector2.ZERO

func _process(delta: float) -> void:
	if Input.is_action_pressed("right"):
		velocity.x = SPEED
	if Input.is_action_pressed("left"):
		velocity.x = -SPEED
		
	velocity.y = velocity.y + GRAVITY
	
	if Input.is_action_just_pressed("jump") && is_on_floor():
		velocity.y = JUMP_FORCE
	
	velocity = move_and_slide(velocity, Vector2.UP)
	
	velocity.x = lerp(velocity.x, 0, 0.2)
