   
if debug     ////debug information drawing
{
	draw_set_font(font_debug)
	draw_text(kouchou.room_left_border_x+150,50,string_hash_to_newline("travelled: "+string(travelled)))
	draw_text(kouchou.room_left_border_x+150,80,string_hash_to_newline("peacetime: "+string(peacetime)))
}


if kouchou.map=="firetrial" || kouchou.map=="icetrial"
{
	draw_set_font(font_score)
	draw_text(60,60,string_hash_to_newline(string(scoer)))
}


if fossil_surface_redraw_needed
	redraw_fossil_surface() 

if surface_exists(aizen.fossil_surface)
    draw_blocks_and_fossils()

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////draw bounds warning line
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

var draw;
draw=false

for (i=0; i<instance_number(player); i+=1)
	{
	if instance_find(player,i).y<50
	{
		draw=true
		break;
	}
};
if draw
{
	for (i=kouchou.room_left_border_x; i<kouchou.room_right_border_x; i+=50)
	{
		draw_sprite(bound_warning_sprite,warning_subimage,i,0)
	};
}







///gui



var xx,yy,subyy,areaheight,areaxend,areaxstart,maskalpha,maskscale,meter_xoffset,meter_yoffset,meter_height,meter_length,ultind_yoffset;
xx=0
yy=0
subyy=0
maskalpha=1
areaxend=kouchou.room_left_border_x   ///absolute
areaxstart=5  ////plus
areaheight=250
gapheight=0
maskscale=1.8
mask_xoffset=82   ///plus
mask_yoffset=15   ///plus
pocket_xoffset=50  ////plus
pocket_yoffset=50  ///plus
ultind_yoffset=225
meter_length=140
meter_xoffset=70  ///plus
meter_yoffset=235  ///plus
meter_height=10




////// fill in border views 
draw_set_colour(c_black)//( make_colour_hsv(24,130,145) )
//draw_rectangle(0,0,kouchou.room_left_border_x,room_height,false)      ///// view 1   (left hud)
//draw_rectangle(kouchou.room_right_border_x,0,kouchou.room_right_full,room_height,false)   /////  view 2 (right hud)
draw_rectangle(kouchou.room_left_border_x,0,kouchou.room_right_border_x,kouchou.room_top_border_y,false)  /// view 3 (top)
draw_rectangle(kouchou.room_left_border_x,kouchou.room_bottom_border_y,kouchou.room_right_border_x,room_height,false)  /// view 4 (bottom)




//////////////////////////////////////////////////////////////////////////////////////// LEFT SIDE (MASKS)
draw_set_font(font_scoreboard)
draw_sprite_ext(arcade_cabinet,0,kouchou.room_left_border_x,0,-1,1,0,c_white,1)

/////////////////////////////P1
for (v=0; v<kouchou.MAX_PLAYER_COUNT; v+=1)
{
	if player_draw_HUD[v]==true
	{

		draw_set_colour(c_lime)
		subyy=yy+(areaheight+gapheight)*v//+areaheight
		draw_sprite(arcade_cabinet_scorebar,0,xx+areaxstart,yy+(    (areaheight+gapheight)*v    ))   
		draw_sprite_ext(playerhpglow[v],hudfloatingmasks_subimage,xx+areaxstart+mask_xoffset,subyy+mask_yoffset,maskscale,maskscale,0,c_white,maskalpha)
		draw_sprite_ext(hud_floatingoogamask,hudfloatingmasks_subimage,xx+areaxstart+mask_xoffset,subyy+mask_yoffset,maskscale,maskscale,0,c_white,maskalpha)
		if aizen.playerpocketorb[v]!=-1
			draw_sprite(aizen.playerpocketorb[v],0,xx+areaxstart+pocket_xoffset,subyy+pocket_yoffset)
        
		if playerulttimeindex[v]>0
		{
			for (i=0; i<playersupercount[v]; i+=1)
			{
				draw_sprite(tile_stack_hud,1,xx+areaxstart+mask_xoffset+i*50,subyy+ultind_yoffset)
			};
		}
		draw_set_colour(METER_BACKGROUND_COLOUR)
		draw_rectangle(xx+areaxstart+meter_xoffset,subyy+meter_yoffset,xx+areaxstart+meter_xoffset+meter_length,subyy+meter_yoffset+meter_height,false)
		draw_set_colour(METER_COLOUR)
		if player_meter[v]==SUPER_METER_AMOUNT  ///if one more hit until super meter is full, change meter colour to red
			draw_set_colour(c_red)
		draw_rectangle(xx+areaxstart+meter_xoffset,subyy+meter_yoffset,xx+areaxstart+meter_xoffset+((meter_length*player_meter[v])/SUPER_METER_AMOUNT),subyy+meter_yoffset+meter_height,false)
		draw_text(areaxend-50,subyy+190,string_hash_to_newline("orbs"+string(playerorbcount[v])))
		draw_text(areaxend-50,subyy+210,string_hash_to_newline("wins"+string(kouchou.playerwins[v])))
	}
	else
		draw_sprite(arcade_cabinet_scorebar_inactive,0,xx+areaxstart,yy+(    (areaheight+gapheight)*v    ))
}


//////////////////////////////////////////////////////////////////////////////////////// RIGHT SIDE (BAR)
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////                draw orb stack             ////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


xx=kouchou.room_right_border_x+90   ///xx and yy    - position to start drawing orb stack masks from
yy=kouchou.room_top_border_y


//////////////////////////////////////////////////////////////////////////////       draw stack background
draw_sprite(arcade_cabinet,0,kouchou.room_right_border_x,0)
draw_sprite_ext(arcade_cabinet_rightborder,0,kouchou.room_left_border_x+5,0,-1,1,0,c_white,1)
draw_sprite(arcade_cabinet_rightborder,0,kouchou.room_right_border_x-5,0)

draw_sprite(stackframe_sprite,stackframe_subimage,kouchou.room_right_border_x+17,125)


//////////////////////////////////////////////////////////////////////////////       draw stack masks
for (i=0; i<ds_list_size(STACK); i+=1)
{
	draw_sprite_ext(ds_list_find_value(STACK_ORB_SPRITES,ds_list_find_value(STACK,i)),0,xx+2,yy+210+ds_list_size(STACK)+i*150,3.75,3.75,0,c_white,1)
};
if last_stack_sprite!=-1
{
	draw_sprite_ext(last_stack_sprite,image_index,xx,yy+ds_list_size(STACK)+40,2,2,0,c_white,1)
	draw_sprite_ext(active_effect_line,0,xx,yy-50,1,1.75,0,c_white,1)    
}

if kouchou.setmenu_show_fps
{
	if fps_real>80
	{
		draw_set_color(c_white)    
		draw_text(kouchou.room_left_border_x,kouchou.room_top_border_y,string_hash_to_newline(string(round(fps_real/80)*80)+" fps"))
	}
	else
	{
		draw_set_color(c_red)
		draw_text(kouchou.room_left_border_x,kouchou.room_top_border_y,string_hash_to_newline(string(round(fps_real))+" fps"))
	}
    
	if debug
		draw_text(kouchou.room_left_border_x,kouchou.room_top_border_y+35,string_hash_to_newline(string(round(instance_count/25)*25)+"("+string(instance_number(block))+")"))
}   




 