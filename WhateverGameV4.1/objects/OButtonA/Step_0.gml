/// @description Insert description here
// You can write your code in this editor

x=camera_get_view_x(view_camera[0])+200;
y=camera_get_view_y(view_camera[0])+700;

var dvc = 0;
global.APressed = 0;



// Keyboard support for testing to simulate touch

if( keyboard_check(vk_space) == 1 ){

    global.APressed = 1;

}

for(dvc = 0; dvc < 5; dvc += 1)

{

    var mx = device_mouse_x(dvc);

    var my = device_mouse_y(dvc);

    var md = device_mouse_check_button(dvc,mb_left)

    if( md == 1 and position_meeting(mx,my, OButtonA) ) {

        global.APressed = 1;

    } else {

    }

}

if( global.APressed == 1){

    image_index = 1;

} else {

    image_index = 0;

}