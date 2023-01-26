extends KinematicBody2D

var move_speed : float = 50

export (int) var speed = 200

onready var target = position
var velocity = Vector2()

#Jogador movimenta-se através do rato (clique botão esquerdo)
func _input(event):
	if event.is_action_pressed("mouse_click_left"):
		target = get_global_mouse_position()

func _physics_process(delta):
	velocity = position.direction_to(target) * speed
	# look_at(target)
	if position.distance_to(target) > 5:
		velocity = move_and_slide(velocity)


#IGV Sessão 3 - Scripting 1 : 1:09:49

# https://www.youtube.com/watch?v=05OixHPbxNA
# https://www.youtube.com/watch?v=SUZpVd18IMM&t=0s

#https://docs.godotengine.org/en/stable/tutorials/2d/2d_movement.html#click-and-move

