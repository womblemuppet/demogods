var xx,yy,colour;
xx=argument0
yy=argument1
colour=argument6

with instance_create_depth(xx,yy,0,prop_flag_piece)
{
	tx=argument2
	ty=argument3
	image_angle=point_direction(x,y,tx,ty)
	image_xscale=(tx-xx)/sprite_width
	left_flag=argument4
	right_flag=argument5
	if colour=="red"
		sprite_index=pflag_red
	else if colour=="blue"
		sprite_index=pflag_blue
}