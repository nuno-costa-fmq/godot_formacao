extends RigidBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_object_kick_out_body_entered(body):
	$"kick_out_win_sound".play()


func _on_AudioStreamPlayer_finished():
	pass # Replace with function body.
