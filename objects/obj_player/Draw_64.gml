/// @description Debug variables

draw_set_font(fnt_debug);
draw_text(10,50,"Hsp: " + string(hsp));
draw_text(10,80,"Vsp: " + string(vsp));

if(instance_exists(obj_lazer)){
draw_text(30, 200, obj_lazer.opening);
draw_text(30, 220, obj_lazer.retract);
draw_text(30, 240, obj_lazer.charge);
}
