extends CharacterBody2D

@export var _move_speed: float = 400.0

func _physics_process(delta: float) -> void:
	# Obtém a direção de movimento baseada nas teclas de entrada
	var _direction: Vector2 = Input.get_vector(
		"move_left", "move_right", "move_up", "move_down"
	)
	
	# Atualiza a velocidade baseada na direção
	velocity = _direction * _move_speed

	# Move o personagem usando move_and_slide
	move_and_slide()

	# Verifica qual animação deve ser reproduzida
	if _direction != Vector2.ZERO:
		if _direction.y > 0:
			$AnimatedSprite2D.play("baixo")
		elif _direction.y < 0:
			$AnimatedSprite2D.play("cima")
		elif _direction.x != 0:
			# Usa a animação "direita" e faz o flip se estiver indo para a esquerda
			$AnimatedSprite2D.play("direita")
			$AnimatedSprite2D.flip_h = _direction.x < 0
	else:
		# Se não houver movimento, reproduz a animação "parado"
		$AnimatedSprite2D.play("parado")
