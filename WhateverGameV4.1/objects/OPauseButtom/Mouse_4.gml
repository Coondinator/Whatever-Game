/// @description Insert description here
// You can write your code in this editor
if !global.paused_{
    global.paused_ = true
    if sprite_exists(global.screen_pic) sprite_delete(global.screen_pic) ;
    global.screen_pic = sprite_create_from_surface(application_surface,0,0,global.xx,global.yy,false,false,0,0)

    instance_deactivate_all(all)
    instance_create_layer(global.xx/2,global.yy/2,"pipe",OPause);
	instance_create_layer(global.xx/2,global.yy/2-150,"pipe2",OResume);
	instance_create_layer(global.xx/2,global.yy/2,"pipe2",ORestart);
	instance_create_layer(global.xx/2,global.yy/2+150,"pipe2",OExit2);
	instance_create_layer(global.xx/2,global.yy/2,"pipe",ODraw);
	audio_play_sound(sound0,0,0);
    
}