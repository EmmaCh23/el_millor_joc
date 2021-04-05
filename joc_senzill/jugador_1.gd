extends KinematicBody2D

#com fer que desaparegui i que quan toqui
#amb la bota amb moviment la pilota surti cap 
#a dalt.
#com fer pq la bola no senvagi tan lluny.
#com fer per ficar un contador.
#com fer per ficar un temporitzador.

var velocitat := Vector2(0, 0)
const gravetat = 15
var salt = 400
# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	velocitat.x = 0
	#moviments
	if Input.is_action_pressed("ui_right"):
		velocitat += Vector2.RIGHT * 200
	if Input.is_action_pressed("ui_left"):
		velocitat += Vector2.LEFT * 200
	if is_on_floor():
		if Input.is_action_just_pressed("ui_up"):
			velocitat.y = velocitat.y - salt
	velocitat.y += gravetat
	if Input.is_action_pressed("xuta"):
		$cara_bota.play("xuta")
	else:
		$cara_bota.play("quiet")
		#per fer desepareixer bota i colision2
	velocitat = move_and_slide(velocitat, Vector2.UP)
	#(impulse: Vector2)

func _on_Area2D_body_entered(body):
	if body.has_method("rep_cop"):
		body.rep_cop(Vector2(-100, 200))

	
