if select!=-10
{
    ds_list_destroy(commands_list)
    ds_list_destroy(commands_list_properties)
    ds_list_destroy(commands_list_conditions)
    ds_list_destroy(commands_list_boxtype)
    ds_list_destroy(commands_list_properties2)
    instance_activate_all()
    return_to_menu()
}
else
    select=0

