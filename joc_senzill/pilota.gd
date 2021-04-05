extends RigidBody2D


var punts_j1 = 0
var punts_j2 = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	position = Vector2(173.456, -166.562)


func rep_cop(direccio :Vector2):
	apply_central_impulse(direccio)


func _on_porteria_j1_body_entered(body):
	if body.name == "pilota":
		body.position = Vector2(173.456, -166.562)


func _on_porteria_j2_body_entered(body):
	if body.name == "pilota":
		body.position = Vector2(173.456, -166.562)
