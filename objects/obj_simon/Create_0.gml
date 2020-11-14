/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
creator = instance_nearest(x, y, obj_controller_fsm);
selected = -1;
buffer = ""


// Find parameters in our shader
pixelWidth = shader_get_uniform(shd_outline, "pixelWidth");
pixelHeight = shader_get_uniform(shd_outline, "pixelHeight");

// Find pointer to our texture
texture_ptr = sprite_get_texture(spr_simon_attack, 0);

// Get texel width and height
texelWidth = texture_get_texel_width(texture_ptr);
texelHeight = texture_get_texel_height(texture_ptr);