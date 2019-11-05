/// @description Insert description here
// You can write your code in this editor
instance_activate_all();
global.paused_ = false;
instance_destroy();
instance_destroy(OPause);
instance_destroy(ORestart);
instance_destroy(OExit2);
instance_destroy(ODraw);