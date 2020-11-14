/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
var _keyUp = keyboard_check_pressed(vk_up)
var _keyDown = keyboard_check_pressed(vk_down)
var _keyRight = keyboard_check_pressed(vk_right)
var _keyLeft = keyboard_check_pressed(vk_left)
var _keyEnter = keyboard_check_pressed(vk_enter)

//show_debug_message("Creator" + string(creator))

if _keyUp {
	selected = 0
	if buffer == "UP" {
		creator.buffer = buffer;
	} else buffer = "UP"
}

if _keyDown {
	selected = 2
	if buffer == "DOWN" {
		creator.buffer = buffer;
	} else buffer = "DOWN"
}

if _keyLeft {
	selected = 3
	if buffer == "LEFT" {
		creator.buffer = buffer;
	} else buffer = "LEFT"
}

if _keyRight {
	selected = 1
	if buffer == "RIGHT" {
		creator.buffer = buffer;
	} else buffer = "RIGHT"
}

if _keyEnter and buffer != "" {
	creator.buffer = buffer;
}