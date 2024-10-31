/// @description collision with rock
// You can write your code in this editor

// add a collision with rock sprite
effect_create_above(ef_firework, x, y, 1, c_white);
instance_destroy();
obj_game.alarm[0] = 120;