/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

// Find parameters in our shader
pixelWidth = shader_get_uniform(shd_outline, "pixelWidth");
pixelHeight = shader_get_uniform(shd_outline, "pixelHeight");

// Find pointer to our texture
texture_ptr = sprite_get_texture(sprite_index, 0);

// Get texel width and height
texelWidth = texture_get_texel_width(texture_ptr);
texelHeight = texture_get_texel_height(texture_ptr);


weapon = new Weapon(obj_mg_disk, 15, "\"L'ovni\" - Jul", range.single);
hpmax = 100;
hp = hpmax;

manamax = 100;
mana = 25;

spells = ds_list_create();
ds_list_add(spells, new InfiniteStairs());
ds_list_add(spells, new MusicalChairs());
ds_list_add(spells, new Maze());

chosen_spell = noone;