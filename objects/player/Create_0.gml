hspd=0
vspd=0
groundcheck=noone
groundcheck_prev=noone
playerintersectioncheck=noone

JUMPSPEED=12
DOUBLEJUMPSPEED=12
doublejump=0        ///what jump the player is on (0 or 1)    - (when resetting double jump, make sure to give a number to doublejumptimer too)
DOUBLEJUMPTIME=60  //time to double tap up for double jump
doublejumptimer=0   ///the counter for the above
water_jump_factor=1       ///(changed every step)
water_gravity_factor=1     ///(changed every step)
WATER_JUMP_FACTOR_IN_WATER=0.75 ///jump timesed by this number underwater 
WATER_GRAVITY_FACTOR_IN_WATER=2 ///gravity divided by this number underwater 
HOR_RUNSPEED=7.5
HOR_SHUFFLESPEED=6   ///shuffling is the small movement when you tap a key but release before holding
hor_running_counter=0  //4 = pressed r  8+ = holding r  -4 = pressed l  -8< = holding l
HOR_SHUFFLE_THRESHOLD=3   //^
HOR_RUNNING_THRESHOLD=8  //changes      ^  this  number
RUNNING_HSPD_MAX=8
HOR_AIR_ACCEL=0.5
HOR_AIR_MINSPEED=1.5
HOR_AIR_MAXSPEED=5.5
HORIZONTAL_BOUNDARY_WIDTH=20
VSPD_FROM_GRAVITY_DOWN_MAX=10
FRICTION=0.6
AIR_FRICTION=0.2
GRAVITY=0.7   //gravity while rising  
GRAVITY_DOWN=1  //gravity while falling
float_counter=0  //no gravity counter

mild_slowed_counter=0   /// 'small' slow counter for time remaining
MILD_SLOW_PERCENTAGE=0.5     ///speed timesed by this number
brutal_slowed_counter=0 /// 'large' slow counter for time remaining
BRUTAL_SLOW_PERCENTAGE=0.2 ///speed timesed by this number
slowed_show_trail=false   ///is set when slow effect applied

ground_pound_freeze_counter=0
ground_pound_freeze_time=13              ///amount of time to hover in air before going down for GP. uga's decide_moves makes this value lower (and has seperate delay mech)
cangroundpound=0                         /// -1 jump delay 0 can 1 freeze 2 down 3 bounced
GROUNDPOUND_UNAVAILABLE_TIME=5           //prevents groundpound after jumping for this long
GROUND_POUND_STUN_AMOUNT=70              ///steps to be stunned for ///payday stun is set to twice this
GROUND_POUND_SPEED=15
groundpound_current_hitbox_object=noone
recovery_groundpound_active=false        ///the player has ceiling-kill protection if this is active
disable_next_groundpound_effect=true

orb_count_meter=0   ///charge towards super mode, gained by activating orbs
can_activate_super_mode=true //set to false until releasing both attack buttons after an orb call

super_mode=false
super_mode_time_remaining=0   ///time remaining until super mode times out


DASH_COOLDOWN_TIME=22 //originally 70, cooldown between dashes. now irrelevant [finaledit]
dashcd=0  /// dash cooldown counter
dash_current_hitbox_object=noone
dash_has_lifted_off_ground=false
dash_button_currently_held=false
ground_dash_speed=-9999    ///speed of the current dash (if grounded).             WARNING             gets changed when attack happens so this value here means nothing
ground_dash_counter=0 ///counter for length of dash
GROUND_DASH_MAX=20  /// when ground_dash_amount reaches this amount the dash ends
AIR_DASH_SPEED=15   ///speed of dash when in air
AIR_DASH_VSPEED=3.5    ///(minused when dashing in air)
DASH_LOCKDOWN_TIME=20 ///time you can't move after dashing
dash_wallbreak_forgive=false //set to true if the dash breaks a wall, stopping the dash lockdown

dash_rocket_jump=0 //// upward dash     0 can 1 freeze 2 in animation 3 used.
dash_rocket_jump_charge=0 ///0 for not charged, 1 ,2, 3 for different charge durations
ROCKET_JUMP_INPUT_TIME_ALLOWED_FROM_JUMP=3   ///amount of time after pushing up where pushing dash will start rocket jump
rocket_jump_input_time_counter_from_jump=0   ///counter for above
ROCKET_JUMP_INPUT_TIME_ALLOWED_FROM_DASH=3    ///amount of time after pushing dash where pushing up will start rocket jump
rocket_jump_input_time_counter_from_dash=0   ///counter for above
DASH_ROCKET_JUMP_CHARGE_LEVEL_1_THRESHOLD=3    ///when charging animation of rocket jump reaches these frames, charge goes up
DASH_ROCKET_JUMP_CHARGE_LEVEL_2_THRESHOLD=13
DASH_ROCKET_JUMP_AMOUNT_LEVELS=[0,8,16,22] ////vspd minued this amount depending on charge level
DASH_ROCKET_JUMP_STUN_DURATION_LEVELS=[0,50,50,50] ////stun amount also depends on charge 
dash_rocket_jump_VUNERABLE_CRIPPLE_AMOUNT=100  ///if whacked during rocket jump charge, get crippled for this amount
dash_rocket_top_collision_safety_on=false //player can't die from going off top, and will limit vspd near top while this is true
DASH_ROCKET_TOP_COLLISION_MAXY=8



recoil_sprite_counter=0    ///time left where idle sprite becomes flinching animation (shouldn't be called recoil)

canpush=true   //// cooldown for uppercut (archaic...)
push_other_attacks_timer=0 ///counter for below (archaic)
PUSH_OTHER_ATTACKS_TIME=12 ////other attacks allowed after this time after an uppercut (archaic)
PUSH_COOLDOWN=40  ///uppercut cooldown timer (archaic as well...)

LOONEYTUNE_TIME=4 ///after jumping off ledge you have this much time to still jump
ltt=0 //(looneytune time) counter for above
octdir=-1     ///output of 8 way aim script
jumped=false  //after jump set to true so when landing can give superjump (but not when falling)
stunned=0   
stunned_groundpound=0
immune=false      ///inability to take further damage while flickering
sidezap=false
hothands=0
hhspr=mask_index
hothandimageindex=0      ///hothands indicator image index
HOTHANDIMAGENUMBER=10 //update when changing hothands counter sprite
holding_a_crab=false
crab_being_held=-1   ///id of throwable critter  being held
cripple_debuff_counter=0   ///debuff stopping dashes and jumping
impact_debuff_counter=0   ///debuff making you destroy terrain when hit
chained_debuff_counter=0    ///debuff when etting hit by bait chaining attack
chained_debuff_x_pos=0     ///x pos of chain
chained_debuff_y_pos=0     ///y pos of chain
chain_effect_id_to_delete=noone   ///id of chain effect instance

NUMBER_OF_POCKET_SPACES=4
number_of_pockets=0    ///type of pocketed orb
player_empty_pockets()
pocket_super_mode_stored=false ///if true, super_mode is stored in current pocket
pocket_light_heavy_held_counter=0

canbounce_counter=0  ///bounce counter
canbounce_show_bounced_effect_counter=0   ///effect trail after bouncing off wall
CANBOUNCE_SHOW_BOUNCED_EFFECT_TIME=10
BOUNCE_HORIZONTAL_VELOCITY=12
BOUNCE_HORIZONTAL_MINOR_VELOCITY=1
BOUNCE_VERTICAL_SKIM_VELOCITY=4  //positive, gets minused
BOUNCE_VERTICAL_ONLY_VELOCITY=14  //positive, gets minused
iframes=0 //cant be hit while this is >0
armouredframes=0  //can't be knocked back during this time
FRAME_SPEED_NORMAL=0.2
FRAME_SPEED_FAST=0.4
FRAME_SPEED_SLOW=0.1
image_speed=FRAME_SPEED_NORMAL


has_made_splash_effect=false

////SPECIAL INTERACTIONS //////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//[finaledit] instead of player class holding baggage for all characters make them only hold/check relevant vars

running_startup_frames=0   ///number of startup frames in running animation (currently only implemented with uga)
dash_attacks_allowed_counter=0
uniques_mines_enabled=false
uniques_gpcombo_cripples_enabled=false
uniques_teleport_enabled=false
uniques_teleport=-1   ///-1 not enabled    0 = placeable 1 = placed 
uniques_my_teleport_id=noone

//UGA GP
uniques_uga_delayable_gp_enabled=false
GROUND_POUND_EXTRA_DELAY_MAX=40
ground_pound_extra_delay_counter=0

//OOGA FPUNCH
uniques_fpunch_cd_counter=0
UNIQUES_FPUNCH_COOLDOWN=50
uniques_fpunch_lockdown=0   //0 = nothing 1 = charging 2 = locked in
uniques_fpunch_charge=0   ///charge counter of fpunch
UNIQUES_FPUNCH_CHARGE_MIN=10
UNIQUES_FPUNCH_CHARGE_MAX=50
uniques_fpunch_feet_counter=-1   /// -1 = not in use 0= please start 1/2 steps back 3= please start 4/5 steps forward (4 resets to -1)
uniques_fpunch_has_made_hitbox=false

//OOGA ULT
uniques_super_ooga_gp_enabled=false
unique_ooga_gp_charges=0

//VETERAN STANDARD PUNCH
uniques_vet_la_target_counter=0
uniques_vet_la_target=noone
UNIQUES_VET_LA_TARGET_COUNTER_RESET_TIME=35

//VETERAN SPINNER ATTACK
uniques_spinner_attack_lockdown=0    ///0 = nothing 1 = pre spin windup 2 = pre shockwave attack 3 = recovery
uniques_spinner_attack_has_made_aa_hitbox=false
uniques_spinner_attack_has_made_shockwave_hitbox=false
uniques_spinner_attack_charge=0
UNIQUES_SPINNER_ATTACK_CHARGE_MIN=15
UNIQUES_SPINNER_ATTACK_CHARGE_MAX=50
uniques_spinner_attack_hitbox_id=noone

//VETERAN FORWARD PUNCH
//uniques_forwardpunch_feet_counter=-1 // -1  = not in use 0 = please start 1/2 steps forward (1 resets to -1)


//VETERAN MINES
mines_ammo=0

//VET STICKY MINE
uniques_sticky_mine_enabled=false
uniques_sticky_mine_lockdown=0

//VET DRILL MINE
uniques_drill_mine_place_animation_lock=false

//VETERAN PARACHUTE
uniques_parachute_enabled=false
uniques_parachute=0   ///0 = can use 1 = in use 2 = used/can't use
UNIQUES_PARACHUTE_FALL_SPEED=0.5
uniques_parachute_minimum_time_counter=0
UNIQUES_PARACHUTE_MINIMUM_TIME=30

//VETERAN DIG
uniques_vet_dig_enabled=false
uniques_vet_digging=0   ///0 = not in use  1 = in windup  2 = digging horizontally 3 = digging up 

//SLINGER PHASE
uniques_phase_enabled=false
uniques_phase_counter=0
uniques_phase_target=noone
UNIQUES_SLINGER_TIME_IN_PHASE=150


//SLINGER SUNBLAST
uniques_sunblast_lockdown=0 //0 = nothing 1 = charging 2 = shot/recovery
uniques_sunblast_cd_counter=0
UNIQUES_SUNBLAST_COOLDOWN=80
uniques_sunblast_has_made_hitbox=false
UNIQUES_SUNBLAST_FLOAT_COUNTER_AMOUNT=14

//SLINGER AIRBOLT
uniques_airbolt_lockdown=0  //0 = nothing 1 = in animation 2 = shot/recovery
uniques_airbolt_has_made_hitbox=false
UNIQUES_AIRBOLT_FLOAT_COUNTER_AMOUNT=14

//BAIT CHAIN
BAITCHAIN_CHAIN_TIME=150
BAITCHAIN_CHAIN_RANGE=75
uniques_baitchain_last_chained=noone
uniques_baitchain_last_chained_timer=0
uniques_baitchain_update_pos_counter=0

//BAIT DASH GP BLINK ATTACK
uniques_dashgpblinkattack_enabled=false  //for want of a better name
uniques_dashgpblinkattack_lockdown=0  //0 = not in use 1 = windup (after windup player deactivates and this goes to 0 again)
UNIQUES_DASHGPBLINKATTACK_START_HEIGHT=175

//BAIT WHIRLWIND
uniques_whirlwind_active=false
UNIQUES_WHIRLWIND_SPEED=5
UNIQUES_WHIRLWIND_SELFSTUN_AMOUNT=30

//BAIT SHARK ATTACK PUNCH
uniques_sharkattack_lockdown=0
uniques_sharkattack_has_made_hitbox=false
uniques_sharkattack_feet_counter=-1
uniques_sharkattack_cd_counter=0
UNIQUES_SHARKATTACK_COOLDOWN=50

//BAIT SUPER MODE
uniques_honeybadger_enabled=false

// AIRGRAB
airgrab_mode="can_airgrab"   ///"can_airgrab" "attempting" "is_grabbing" "cannot_airgrab" "being_airgrabbed"
airgrab_decidedir_time=0
AIRGRAB_TIME_TO_DECIDE=45
airgrab_target=-1
airgrab_slam_on=false
MAX_CANBOUNCE_COUNTER=20
AIRGRAB_STUN_TIME=65


sprites_below_run_priority=ds_list_create()   ///sprites on these lists can get replaced by run,idle and recoil sprites in events
sprites_below_idle_priority=ds_list_create()
sprites_below_recoil_priority=ds_list_create()
recoiling_sprites=ds_list_create()
FALLING_SPRITE_THRESHOLD_VSPD_LARGER_THAN=-0.25   ///if vspd larger than this swap from jumped sprite to falling sprite


lastdamagetype=""  ///last type of damage taken (string) for corpse

attacks=ds_map_create()   //[finaledit] to be deleted on game end




