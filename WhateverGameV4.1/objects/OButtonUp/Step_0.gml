/// @description Insert description here
// You can write your code in this editor
x=camera_get_view_x(view_camera[0])+230;
y=camera_get_view_y(view_camera[0])+520;

var dvc = 0;

global.upPressed = 0;

// Keyboard support for testing to simulate touch

if( keyboard_check(vk_up) == 1 ){

    global.upPressed = 1;

}

for(dvc = 0; dvc < 5; dvc += 1)

{

    var mx = device_mouse_x(dvc);

    var my = device_mouse_y(dvc);

    var md = device_mouse_check_button(dvc,mb_left)

    if( md == 1 and position_meeting(mx,my, OButtonUp ) ) {

        global.upPressed = 1;

    } else {

    }

}

if( global.upPressed == 1){

    image_index = 1;

} else {

    image_index = 0;

}