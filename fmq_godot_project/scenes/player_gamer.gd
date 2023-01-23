extends RigidBody2D

var move_speed : float = 50

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("mouse_0_click"):
	
func _process(delta: float) -> void:
	var mouse_pos = get_global_mouse_position()
	look_at(mouse_pos)
	rotation_degrees += 90
	var dir = mouse_pos - position
	move_and_slide(dir * move_speed)


#IGV Sessão 3 - Scripting 1 : 1:09:49

# https://www.youtube.com/watch?v=05OixHPbxNA
# https://www.youtube.com/watch?v=SUZpVd18IMM&t=0s

