/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

// Set our shader instead of default one
shader_set(shd_outline);

// Pass our custom float parameters "pixelWidth" and "pixelHeight";
shader_set_uniform_f(pixelWidth, texelWidth);
shader_set_uniform_f(pixelHeight, texelHeight);



// Draw sprite
draw_self();

// Set shader to default
shader_reset();

if hp < 0 image_blend = c_ltgray