extends KinematicBody2D

var velocitat := Vector2(0, 0)
const gravetat = 15
var salt = 500

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	velocitat.x = 0
	#moviments
	if Input.is_action_pressed("dreta"):
		velocitat += Vector2.RIGHT * 200
	if Input.is_action_pressed("esquerra"):
		velocitat += Vector2.LEFT * 200
	if is_on_floor():
		if Input.is_action_just_pressed("salta_1"):
			velocitat.y = velocitat.y - salt
	velocitat.y += gravetat
	if Input.is_action_pressed("xuta_2"):
		$cara_bota.play("xuta")
	else:
		$cara_bota.play("quiet")
	velocitat = move_and_slide(velocitat, Vector2.UP)


func _on_Area2D_body_entered(body):
	if body.has_method("rep_cop"):
		body.rep_cop(Vector2(100, 200))
		
