if uniques_fpunch_lockdown!=2 
	&& uniques_fpunch_lockdown!=3 
	&& uniques_spinner_attack_lockdown==0 
	&& player_not_digging() 
	&& ( !uniques_whirlwind_active || uniques_whirlwind_teleport_direction_change_leeway_counter>0 )
	&& uniques_vet_kamikaze_lockdown==0 
	&& uniques_cracklingbeam_lockdown==0
	return true
	
	
	
return false