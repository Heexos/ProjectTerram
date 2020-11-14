/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
past_status = status;
if x < 32 and y < 192 {
	status = "DOWN"
} else if x < 192 and y > 192 {
	status = "RIGHT"
} else if x > 192 and y > 32 {
	status = "UP"
} else if x > 32 and y < 32 {
	status = "LEFT"
}