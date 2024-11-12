extends Area2D

func _ready() -> void:
	# Inicializa o inventário como invisível
	$local_do_inventario.visible = true

func _input(event: InputEvent) -> void:
	# Verifica se a tecla "mochila" (i) foi pressionada
	if Input.is_action_just_pressed("mochila"):
		# Alterna a visibilidade do inventário
		$local_do_inventario.visible = !$local_do_inventario.visible
