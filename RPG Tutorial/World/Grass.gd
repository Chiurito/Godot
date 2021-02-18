extends Node2D


#istanziare scena via codice
func _process(delta):
	if Input.is_action_just_pressed("attack"):
		
		#carica la scena e la istanzia in una variabile
		var GrassEffect = load("res://Effects/GrassEffect.tscn")
		var grassEffect = GrassEffect.instance()
		
		#accede alla root della scena principale ed aggiunge l'oggetto come child
		var world = get_tree().current_scene
		world.add_child(grassEffect)
		
		#sposta la posizione dell'effetto animato sulla posizione del nodo
		grassEffect.global_position = global_position
		
		#elimina l'oggetto
		queue_free()
