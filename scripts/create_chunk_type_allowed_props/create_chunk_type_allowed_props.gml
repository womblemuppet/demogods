//create_chunk_type_allowed_props(spawn chance 0,prop list 0,spawn chance 1,prop list 1 ...)

var a;

a=instance_create_depth(0,0,0,chunk_type_allowed_props)

if argument_count == 0
	show_error("no args create_chunk_type_allowed_props, dumbo.",true)
if argument_count mod 2 != 0
	show_error("argcount uneven create_chunk_type_allowed_props",true)




for (var i = 0; i < argument_count/2;i+=2)
{
	a.prop_spawn_chance[i]=argument[i]
	a.prop_list[i]=argument[i+1]
}

return a