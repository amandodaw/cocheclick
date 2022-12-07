extends RigidBody2D

var gas_pedal = 150
var gravity_speed = 15

func _process(delta):
	if Input.is_action_just_pressed("left_click"):
		linear_velocity = Vector2(0, -gas_pedal)
		# Sacamos un numero inversamente proporcional a la distancia que falta
		# para llegar a la meta. Cuanto más cerca, más gravedad
		gravity_scale = (1 - position.y/740)*gravity_speed
		print(gravity_scale)
