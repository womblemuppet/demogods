if y<kouchou.room_top_border_y-20
{

	if dash_rocket_top_collision_safety_on==true
	{
		if vspd<-2
			vspd=-2
	}
	else if recovery_groundpound_active==false
	{
		sprite_index=sprites[? "gpfall"]   ///gp
		if super_mode_available
			sprite_index=sprites[? "gpfall_u"]
		y-=1550
		player_flush_lockdowns()
		hspd=0
		losehp("falling")
		recovery_groundpound_active=true
		player_make_vunerable()
		player_make_immune(150)
		var a;
		a=attack_start_groundpound_descent("ground pound")
		with a
			instance_change(hitbox_recovery_groundpound,true)	
		disable_next_groundpound_effect=true
	}
}

if y>kouchou.room_y_halfway
{
	recovery_groundpound_active=false
	with groundpound_current_hitbox_object
		cutting=false
}