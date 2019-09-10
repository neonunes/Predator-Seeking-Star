extends KinematicBody2D

const SPEED = 200
const GRAVIDADE = 20
const FORCA_PULO= 700
const FLOOR = Vector2(0,-1)

var score = 0

var velocidade = Vector2()

var on_ground = false

var vida = 3

func _physics_process(delta):
	if Input.is_action_pressed("ui_right"):
		velocidade.x = SPEED
		$Sprite.play("andando")
		$Sprite.flip_h = false
		
	elif Input.is_action_pressed("ui_left"):
		velocidade.x = -SPEED
		$Sprite.play("andando")
		$Sprite.flip_h = true
	else:
		velocidade.x =0
		if on_ground == true:
			$Sprite.play("parado")
		
	if Input.is_action_pressed("ui_up"):
		if on_ground == true:
			velocidade.y = -FORCA_PULO
			on_ground = false
		
	velocidade.y = velocidade.y + GRAVIDADE
	
	if is_on_floor():
		on_ground = true
	else: 
		on_ground = false
		if velocidade.y < 0:
			$Sprite.play("pulo")
		
	velocidade = move_and_slide(velocidade, FLOOR)