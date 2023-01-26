extends KinematicBody2D

export (int) var speed = 200

var velocity = Vector2()

#Jogador movimenta-se através do teclado
func get_input():
	velocity = Vector2()
	if Input.is_action_pressed("keyboard_right"):
		velocity.x += 1
	if Input.is_action_pressed("keyboard_left"):
		velocity.x -= 1
	if Input.is_action_pressed("keyboard_down"):
		velocity.y += 1
	if Input.is_action_pressed("keyboard_up"):
		velocity.y -= 1
	velocity = velocity.normalized() * speed

func _physics_process(delta):
	get_input()
	velocity = move_and_slide(velocity)
	
