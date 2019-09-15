var gapammo,makeok;
gapammo=0
makeok=true

var numberofblocks_horizontal
numberofblocks_horizontal=kouchou.rw/aizen.bw
	
for (var i=0; i<numberofblocks_horizontal; i+=1)   ///create blocks by horizontal line
{
	//if position_meeting(kouchou.room_left_border_x+i*aizen.bw,argument0,block)   //[finaledit] it pains me to do this check just for gunpowder.
	//	makeok=false
       
	var block_column_number;
	block_column_number=i
	  
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
			
		if biome!="summit" && terrain_special_block_ok() && rand<0.02
			typeofblock="payday ore"      ////payday
		if biome=="sand" && rand>=0.02 && rand <0.04
			typeofblock="weaksand"      ////dissolve block (weaksand)
		//if rand>=0.04 && rand<0.045
		//	typeofblock="instrument"
		//if biome!="summit" && random(1)>0.999
		//	typeofblock=3     ////gunpowder
		//if random(1)>0.995
		//	typeofblock=4   ///pineapple
		//if random(1)>0.995 && terrain_special_block_ok()      TURRET BLOCKS DISABLED
		//	typeofblock=5   ///sentinel    
     

		switch typeofblock
		{
			case "block":
				a=spawn_block(kouchou.room_left_border_x+i*aizen.bw,argument0,0)
				ds_list_add(blockstosprite_prevlayer,a)   break;
			//case "payday ore":
			//	a=spawn_ore_block(kouchou.room_left_border_x+i*aizen.bw,argument0) break;
			case "weaksand":
				a=spawn_weaksand_block(kouchou.room_left_border_x+i*aizen.bw,argument0) break;
			//case 3:
			//	a=spawn_gunpowder_block(kouchou.room_left_border_x+i*40,argument0,0)
			//	ds_list_add(blockstosprite,a)       ///gunnysnake itself doesn't make a block so this makes one for the initial position
			//	instance_create(kouchou.room_left_border_x+i*40,argument0,gunnysnake) break;
			//case 4:
			//	a=spawn_tree_block(kouchou.room_left_border_x+i*40,argument0) break;
			//case 5:
			//	a=spawn_turret_block(kouchou.room_left_border_x+i*40,argument0) break;
			//case "instrument":
			//	//show_message("i="+string(i))
			//	a=spawn_instrument_block(kouchou.room_left_border_x+i*aizen.bw,argument0,false) break;
			default:
				show_error("unhandled typeofblock case",true)
		}
	}
		
	terrain_buffer_layer_newest[i]=a

			
	if random(1)>0.995                                                            /////fossils
	{
		var a;
		a=instance_create(kouchou.room_left_border_x+i*aizen.bw,argument0,ef_fossil)
		a.image_xscale=choose(0.5,0.7,0.9)
		a.image_yscale=a.image_xscale
		a.image_xscale=choose(1,-1)
		switch biome
		{
			case "summit":
				image_index=choose(0,1,2)
				image_angle=random(360) break;
			case "sand":
				image_index=choose(3) break;
			case "cave":
					image_index=choose(4) break;
		}
	}
        
        
	////spawn extras (props, critters, throwable critters
	///////////////////////////////////////////////////////////////////////////////////////////////////////////////////props,critters,crabs won't spawn on startingflat
	if terraintype!="startingflat"
	{
		if random(1)>0.999                                                           /////props
		{
			var block_column_number;
			block_column_number=i
			spawn_prop(argument0,i)
		}
	}
	
          
};