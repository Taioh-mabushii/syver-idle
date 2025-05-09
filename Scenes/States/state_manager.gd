extends Node

class_name StateManager

var current_state: BaseState = null

func change_state(new_state: BaseState):
	if current_state:
		current_state.exit()
		remove_child(current_state)

	current_state = new_state
	add_child(current_state)

	# NEW: Set the manager reference
	current_state.state_manager = self

	current_state.enter()

func _process(delta):
	if current_state:
		current_state.update(delta)
