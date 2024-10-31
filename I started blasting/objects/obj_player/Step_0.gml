/// @description adds movements to sprite
// You can write your code in this editor

// player movement
if keyboard_check(vk_up) {
	motion_add(image_angle, 0.1);
}
if keyboard_check(vk_down) {
	motion_add(image_angle, -0.1);
}
if keyboard_check(vk_left) {
	image_angle += 4;
}
if keyboard_check(vk_right) {
	image_angle -= 4;
}

// makes you "loop" back into the map
move_wrap(true, true, 0)

// 
if keyboard_check_pressed(vk_space){
	instance_create_layer(x, y, "Instances", obj_bullet)
}
/*
if mouse_check_button_pressed(mb_left){
	instance_create_layer(x, y, "Instances", obj_bullet)
}
*/