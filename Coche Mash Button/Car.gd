extends RigidBody2D

signal started

var texture = ResourceLoader.load("res://60-602409_sprite-car-png.png")

var gas_pedal = 150
var gravity_speed = 15

func _ready():
	$Sprite.texture = texture
	gravity_scale = 0
	connect("started", get_parent().get_node("ScoreTimer"), "start")

func _process(delta):
	if Input.is_action_just_pressed("left_click"):
		#Comenzamos el temporizador si está parado
		if get_parent().get_node("ScoreTimer").is_stopped():	
			emit_signal("started")
			get_parent().get_node("CenterContainer2/Label").hide()
		#Damos un impulso basico
		linear_velocity = Vector2(0, -gas_pedal)
		increase_gravity()

func increase_gravity():
		# Sacamos un numero inversamente proporcional a la distancia que falta
		# para llegar a la meta. Cuanto más cerca, más gravedad
		gravity_scale = (1 - position.y/740)*gravity_speed
