var right = keyboard_check(vk_right);
var left = keyboard_check(vk_left);
var jump = keyboard_check_pressed(vk_up);

// Calculate movement
var hsp_move = (right - left) * walkspd;
hsp = hsp_move;

grv = 0.7;  // Decreased gravity (add here or in Create for finer control)

if (keyboard_check(vk_right)) {
    image_xscale = -1;  // Face right (no flip)
} else if (keyboard_check(vk_left)) {
    image_xscale = 1; // Face left (flip)
}



// Gravity and jump
if (!place_meeting(x, y + 1, oSolid)) {
    vsp += grv;
} else if (jump) {
    vsp = -jumpspd;
}

// Horizontal collision and move
if (place_meeting(x + hsp, y, oSolid)) {
    while (!place_meeting(x + sign(hsp), y, oSolid)) {
        x += sign(hsp);
    }
    hsp = 0;
}
x += hsp;

// Vertical collision and move (prevents falling through tops)
if (place_meeting(x, y + vsp, oSolid)) {
    while (!place_meeting(x, y + sign(vsp), oSolid)) {
        y += sign(vsp);
    }
    vsp = 0;
}
y += vsp;

// Out of bounds death
if (x < 0 || x > room_width || y > room_height) {
    x = start_x;
    y = start_y;
}
