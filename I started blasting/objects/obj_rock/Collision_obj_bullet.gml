/// @description when it collides w/ bullet
// You can write your code in this editor

// add sprite effect during collision
instance_destroy(other);
effect_create_above(ef_explosion, x, y, 1, c_white);

direction = random(360)

// big loop, big rock ->small rock
// small rock -> destroyed
// respawns rocks if less than 12, otherwise destroys
if sprite_index == spr_rock_big {
	sprite_index = spr_rock_small;
	instance_copy(true);
} else if instance_number(obj_rock) < 12 {
	sprite_index = spr_rock_big;
	x = -100;
} else {
	instance_destroy();
}

// 
obj_game.points += 50;