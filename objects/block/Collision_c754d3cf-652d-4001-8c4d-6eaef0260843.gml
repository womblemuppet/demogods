if instance_exists(other.creator)
{
	with other.creator
		dash_wallbreak_forgive=true
}

if other.cuts_terrain
{
	block_take_damage()

	if other.attack_name="dash"
	{
		if instance_exists(other.creator)
		{
			with other.creator
			{
				attack_create_projectile(block_volley,projectile_create_hitbox_block_volley,25)
				show_debug_message("created block volley")
			}
		}
	}
}
