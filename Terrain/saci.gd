extends Area2D

	# Conecta o sinal body_entered para chamar a função _on_body_entered

func _on_body_entered(body: Node) -> void:
	# Verifica se o diálogo já está ativo para evitar que seja chamado novamente
	if Dialogic.current_timeline != null:
		return

	# Verifica se o corpo que entrou é o jogador (substitua "Player" pelo nome exato do nó do jogador)
	if body.name == "Player":
		# Inicia o diálogo "abertura" ao encostar no objeto
		Dialogic.start("abertura")


func _on_area_2d_body_entered(body: Node2D) -> void:
	pass # Replace with function body.
