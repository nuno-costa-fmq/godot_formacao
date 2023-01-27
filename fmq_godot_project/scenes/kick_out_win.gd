extends RigidBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var avoid_repeat_factor = 3

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_kick_out_win_body_entered(body):
	if abs(self.linear_velocity.x)>avoid_repeat_factor or abs(self.linear_velocity.y)>avoid_repeat_factor: 
		$"kick_out_win_sound".play()
	

func _on_kick_out_win_sound_finished():
	pass # Replace with function body.
