extends RigidBody2D

var player_name := "RU-1"

var position = Vector2(1,1)

var has_key : bool
var has_crowba : bool

func _ready(): -> void:
	if has_key:
		#abre a porta
	elif has crowbar:
		#destroi o cofre
	else:
		#nada acontece

#onready var audio_stream : AudioStreamPlayer2D = $"AudioStreamPlayer"

#func _ready(): -> void:
#	audio_stream.play()
	
