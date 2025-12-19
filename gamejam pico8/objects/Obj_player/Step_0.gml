// Get input
rightKey = keyboard_check(vk_right);
leftKey = keyboard_check(vk_left);

// X Movement
moveDir = rightKey - leftKey;

xspd = moveDir * moveSpd;

// X collision
var _subPixel = .5;
if place_meeting(x + xspd, y, )