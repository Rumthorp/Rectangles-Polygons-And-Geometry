var angle = point_direction(x, y, mouse_x, mouse_y);

var left = keyboard_check(ord("A")) ? 1 : 0;
var right = keyboard_check(ord("D")) ? 1 : 0;
var up = keyboard_check(ord("W")) ? 1 : 0;
var down = keyboard_check(ord("S")) ? 1 : 0;

var modifiedPlayerSpeed = (left + right + up + down > 1) ? playerSpeed * .66 : playerSpeed;

image_angle = point_direction(x, y, mouse_x, mouse_y);

if (point_distance(x, y, mouse_x, mouse_y) < 5) exit; 

if (keyboard_check(vk_left) || (keyboard_check(ord("A")))) {
	x = x + lengthdir_x(modifiedPlayerSpeed, angle + 90);
	y = y + lengthdir_y(modifiedPlayerSpeed, angle + 90);
}

if (keyboard_check(vk_right) || (keyboard_check(ord("D")))) {
	x = x + lengthdir_x(modifiedPlayerSpeed, angle - 90);
	y = y + lengthdir_y(modifiedPlayerSpeed, angle - 90);
}

if (keyboard_check(vk_down) || (keyboard_check(ord("S")))) {
	x = x + lengthdir_x(modifiedPlayerSpeed, angle + 180);
	y = y + lengthdir_y(modifiedPlayerSpeed, angle + 180);
}

if (keyboard_check(vk_up) || (keyboard_check(ord("W")))) {
	x = x + lengthdir_x(modifiedPlayerSpeed, angle);
	y = y + lengthdir_y(modifiedPlayerSpeed, angle);
}

//Items
if (leftHandInstance != -1) {
	with(leftHandInstance) {
		animateIdleItem();
	}
}

