extends Sprite
var punts_j1 = 0
var punts_j2 = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _on_porteria_j1_body_entered(body):
	if body.name == "pilota":
		punts_j2 += 1
		$j2.text = str(punts_j2)


func _on_porteria_j2_body_entered(body):
	if body.name == "pilota":
		punts_j1 += 1
		$j1.text = str(punts_j1)
