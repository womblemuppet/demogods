var gapammo,makeok;
gapammo=0
makeok=true

var y_position;
y_position=argument0

var numberofblocks_horizontal
numberofblocks_horizontal=kouchou.rw/aizen.bw

///create blocks by horizontal line
for (var block_column_number=0; block_column_number<numberofblocks_horizontal; block_column_number+=1)   
{
	makeok=terrain_type_spawn_block_pattern_logic(block_column_number)  //sets makeok if necessary
     
	var a;
	a=-1
		
	////////////////////// if all checks passed,  create block
	if makeok 
	{
		var typeofblock;
		typeofblock="block"   ///normal
		var rand;
		rand=random(1)
		
		if biome=="sand" && rand>=0.02 && rand<0.04
			typeofblock="weaksand"      ////dissolve block (weaksand)
     

		switch typeofblock
		{
			case "block":
				a=spawn_block(kouchou.room_left_border_x+block_column_number*aizen.bw,y_position)
				ds_list_add(blockstosprite_prevlayer,a)   break;
			case "weaksand":
				a=spawn_weaksand_block(kouchou.room_left_border_x+block_column_number*aizen.bw,y_position) break;
			default:
				show_error("unhandled typeofblock case",true)
		}
	}
		
	terrain_buffer_layer_newest[block_column_number]=a

	//spawn fossils (disabled)
	//if random(1)>0.995
	//{
	//	var a;
	//	a=instance_create(kouchou.room_left_border_x+i*aizen.bw,y_position,ef_fossil)
	//	a.image_xscale=choose(0.5,0.7,0.9)
	//	a.image_yscale=a.image_xscale
	//	a.image_xscale=choose(1,-1)
	//	switch biome
	//	{
	//		case "summit":
	//			image_index=choose(0,1,2)
	//			image_angle=random(360) break;
	//		case "sand":
	//			image_index=choose(3) break;
	//		case "cave":
	//				image_index=choose(4) break;
	//	}
	//}


	////spawn props
	if makeok && space_for_spawn_exists(block_column_number)
	{
		var current_props_instance;
		current_props_instance=chunkery_allowed_props_instance[? current_chunk_name]
		var prop_list_count;
		prop_list_count=current_props_instance.number_of_prop_lists
		
		for (var i = 0; i < prop_list_count; i++)
		{
			if random(1)>=(1-current_props_instance.prop_spawn_chance[i])
			{
				show_debug_message("spawned prop")
				spawn_prop(y_position,block_column_number,current_props_instance.prop_list[i])
			}
		}

	}
	

};