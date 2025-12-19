// Get input
rightKey = keyboard_check(vk_right);
leftKey = keyboard_check(vk_left);
jumpKeyPressed = keyboard_check_pressed(vk_space)

// X Movement
moveDir = rightKey - leftKey;

xspd = moveDir * moveSpd;

// X collision
var _subPixel = .5;
if place_meeting(x + xspd, y, oWall) {
	var _pixelCheck = _subPixel * sign(xspd);
	
	while !place_meeting(x + _pixelCheck, y, oWall) {
		x += _pixelCheck;
	}
	
	xspd = 0;
}

x += xspd; 


// Y Movement
yspd += grav;

if jumpKeyPressed && place_meeting(x, y + 1, oWall) {
	yspd = jspd;
}

if place_meeting(x, y + yspd, oWall) {
	var _pixelCheck = _subPixel * sign(yspd);
	
	while !place_meeting(x, y + _pixelCheck, oWall) {
		y += _pixelCheck;
	}
	
	
	yspd = 0;
}

y += yspd; 


// if yspd > termVel {  yspd = termVel }


// Sprite
if moveDir != 0 {
    image_xscale = sign(moveDir);
}