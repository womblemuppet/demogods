if !gamepad
    return keyboard_check_released(argument0)

if gamepad_button_check_released(padnumber,argument0)
	return true
else
{
	if argument0==gp_padr && (kouchou.stick_pressed_r[P]==3)
		return true
	if argument0==gp_padu && (kouchou.stick_pressed_u[P]==3 )
		return true
	if argument0==gp_padl && (kouchou.stick_pressed_l[P]==3 )
		return true
	if argument0==gp_padd && (kouchou.stick_pressed_d[P]==3)
		return true
}
if argument0==gp_padu 
{
	if gamepad_button_check_released(padnumber,gp_face1)
		return true
}
	
return false
