/***************************************************
  losehp(gets around coconuke invuln,lastdamagetype)
 ***************************************************/
var me,safe;
me=self.id
safe=false

TESTING_PLACEHOLDER=argument0   ///[finaledit] to be deleted
lastdamagetype=argument1

if iframes>0
	safe=true

if immune==false && safe==false
{                                                                              //////////////take damage ///////////////////////////////////////////////////////////
	alarm[4]=80    ///flashing time
	immune=true
	hothands=0
	H-=1
	
	pocket_orb=-1                               ///reset pocket orb
	pocket_super_mode_stored=false
	player_update_pocket_hud()
	
	player_flinch()
	player_update_health_hud()
	cc_reset_clean()
	if H<1
	{
		playerdie()
	}
    
}
