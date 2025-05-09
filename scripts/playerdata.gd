extends Node

# Woodcutting stats
var woodcutting_xp := 0
var woodcutting_level := 1
var wood_logs := 0

func add_woodcutting_xp(amount: int):
	woodcutting_xp += amount
	var required = xp_required_for_level(woodcutting_level + 1)
	if woodcutting_xp >= required:
		woodcutting_level += 1
		print("Leveled up! Woodcutting is now level %d" % woodcutting_level)

func xp_required_for_level(level: int) -> int:
	# Simple XP curve: 10 * level ^ 2
	return 10 * level * level
