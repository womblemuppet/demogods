var critter_type,critter_species;
critter_type=choose("ground")//,"flying"

var y_position;
y_position=argument0

var possibles;
possibles=argument1

if !instance_exists(possibles[| 0])
	return undefined;
var critter_spawn_x;	
critter_spawn_x=possibles[| 0].x

show_debug_message("spawned, critter_spawn_x = "+string(critter_spawn_x)+" terrain_buffer_layer_newest["+string(0)+"] = "+string(terrain_buffer_layer_newest[0])+" terrain_buffer_layer2["+string(0)+"] = "+string(terrain_buffer_layer2[0]))

if critter_type=="ground"
	critter_species=choose("worm")//,snake etc)
	
var a;
a=instance_create_depth(critter_spawn_x,y_position-20,-5,critter)
with a
	critter_nonthrowable_setup("worm")