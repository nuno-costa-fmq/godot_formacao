extends RigidBody2D

var move_speed : float = 50

<<<<<<< Updated upstream
func _input(event: InputEvent) -> void:
	if event.is_action_pressed("mouse_0_click"):
	
func _process(delta: float) -> void:
	var mouse_pos = get_global_mouse_position()
	look_at(mouse_pos)
	rotation_degrees += 90
	var dir = mouse_pos - position
	move_and_slide(dir * move_speed)
=======
export (int) var speed = 200

onready var target = position
var velocity = Vector2()

func _input(event):
	if event.is_action_pressed("mouse_click_left"):
		target = get_global_mouse_position()

func get_input():
	velocity = Vector2()
	if Input.is_action_pressed("right"):
		velocity.x += 1
	if Input.is_action_pressed("left"):
		velocity.x -= 1
	if Input.is_action_pressed("down"):
		velocity.y += 1
	if Input.is_action_pressed("up"):
		velocity.y -= 1
	velocity = velocity.normalized() * speed

func _physics_process(_delta):
	velocity = position.direction_to(target) * speed
	# look_at(target)
	if position.distance_to(target) > 5:
		velocity = move_and_slide(velocity)
>>>>>>> Stashed changes


#IGV Sessão 3 - Scripting 1 : 1:09:49

# https://www.youtube.com/watch?v=05OixHPbxNA
# https://www.youtube.com/watch?v=SUZpVd18IMM&t=0s

