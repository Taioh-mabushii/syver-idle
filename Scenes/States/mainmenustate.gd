extends BaseState

@onready var start_button = $StartButton

func enter():
	start_button.pressed.connect(on_start_pressed)

func exit():
	start_button.pressed.disconnect(on_start_pressed)

func on_start_pressed():
	var game_state = preload("res://scenes/states/GameState.tscn").instantiate()
	state_manager.change_state(game_state)  # Use the variable now!
