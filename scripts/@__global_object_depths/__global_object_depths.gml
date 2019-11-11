// Initialise the global array that allows the lookup of the depth of a given object
// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
// NOTE: MacroExpansion is used to insert the array initialisation at import time
gml_pragma( "global", "__global_object_depths()");

// insert the generated arrays here
global.__objectDepths[0] = 0; // tousen
global.__objectDepths[1] = 0; // avatar
global.__objectDepths[2] = 0; // conversation_starter
global.__objectDepths[3] = 0; // wall
global.__objectDepths[4] = 0; // item
global.__objectDepths[5] = 0; // OVERWORLD_SOLID
global.__objectDepths[6] = 0; // denizen
global.__objectDepths[7] = 0; // npc
global.__objectDepths[8] = -20; // kouchou
global.__objectDepths[9] = 0; // aizen
global.__objectDepths[10] = 0; // block_drawer
global.__objectDepths[11] = 0; // pauser
global.__objectDepths[12] = 0; // openingcredits
global.__objectDepths[13] = -8; // lighting
global.__objectDepths[14] = 8; // sky
global.__objectDepths[15] = -20; // winsplash
global.__objectDepths[16] = 0; // scrolls
global.__objectDepths[17] = -1; // player
global.__objectDepths[19] = 0; // block
global.__objectDepths[24] = 0; // dangerous
global.__objectDepths[29] = 0; // weaksand
global.__objectDepths[30] = 0; // terrain_destruction
global.__objectDepths[31] = 0; // prop
global.__objectDepths[32] = 0; // crab
global.__objectDepths[33] = 0; // critter
global.__objectDepths[34] = -1; // hitbox
global.__objectDepths[35] = 0; // terrain_cutter
global.__objectDepths[36] = 0; // sunblast
global.__objectDepths[37] = -2; // dashattack
global.__objectDepths[38] = 0; // ooga_gp_boom
global.__objectDepths[39] = -99; // jump_vibration
global.__objectDepths[40] = 0; // magicbolt
global.__objectDepths[41] = 0; // airgrab
global.__objectDepths[42] = 0; // ooga_gp_shockwave
global.__objectDepths[43] = 0; // mine
global.__objectDepths[44] = 0; // teleport
global.__objectDepths[45] = 0; // dashclasher
global.__objectDepths[46] = 0; // crabjectile
global.__objectDepths[47] = -2; // clusternet
global.__objectDepths[48] = 0; // mortar
global.__objectDepths[49] = 0; // winter
global.__objectDepths[50] = 0; // freakyfriday
global.__objectDepths[52] = -1; // storm
global.__objectDepths[53] = 0; // payday
global.__objectDepths[55] = 0; // tornadoe
global.__objectDepths[56] = -3; // bloodmoon
global.__objectDepths[57] = -4; // airtunnel
global.__objectDepths[58] = -2; // meteor
global.__objectDepths[59] = 0; // meteor_explosion
global.__objectDepths[60] = -3; // icespike
global.__objectDepths[61] = 0; // zap
global.__objectDepths[62] = -3; // zapindicator
global.__objectDepths[63] = -2; // pineapple
global.__objectDepths[65] = -5; // wave
global.__objectDepths[66] = 0; // coin
global.__objectDepths[67] = 0; // coldwave
global.__objectDepths[68] = -4; // sentinel
global.__objectDepths[69] = -5; // jellyfish
global.__objectDepths[70] = 4; // mountains_backdrop
global.__objectDepths[71] = 0; // ef
global.__objectDepths[72] = 0; // ef_fade
global.__objectDepths[73] = 3; // ef_backdrop
global.__objectDepths[74] = -100; // ef_screenflash
global.__objectDepths[75] = 6; // ef_steam
global.__objectDepths[76] = -2; // ef_follower
global.__objectDepths[78] = -2; // ef_vine
global.__objectDepths[79] = -5; // ef_fossil
global.__objectDepths[80] = 0; // ef_chain
global.__objectDepths[81] = -10; // ef_debug_fade_text
global.__objectDepths[82] = -4; // ef_rubble
global.__objectDepths[83] = 0; // ef_menupart
global.__objectDepths[84] = 0; // ef_playerselect
global.__objectDepths[85] = -23; // firetrial_control
global.__objectDepths[86] = 0; // icetrial_control
global.__objectDepths[87] = -10; // stormtrial_control
global.__objectDepths[88] = 0; // lightning_collectable
global.__objectDepths[89] = -2; // lightning_totem
global.__objectDepths[90] = 0; // lightningbomb
global.__objectDepths[91] = 0; // clusterlightning
global.__objectDepths[92] = -1; // clingyfireball
global.__objectDepths[93] = -2; // melter
global.__objectDepths[94] = -1; // bottomlava
global.__objectDepths[95] = -3; // meltedblock
global.__objectDepths[96] = -3; // icetrial_falling_spikes
global.__objectDepths[98] = -2; // icetrial_upsike
global.__objectDepths[99] = -7; // glacier
global.__objectDepths[100] = -1; // tree
global.__objectDepths[101] = -7; // dolphin
global.__objectDepths[102] = 0; // torch


global.__objectNames[0] = "tousen";
global.__objectNames[1] = "avatar";
global.__objectNames[2] = "conversation_starter";
global.__objectNames[3] = "wall";
global.__objectNames[4] = "item";
global.__objectNames[5] = "OVERWORLD_SOLID";
global.__objectNames[6] = "denizen";
global.__objectNames[7] = "npc";
global.__objectNames[8] = "kouchou";
global.__objectNames[9] = "aizen";
global.__objectNames[10] = "block_drawer";
global.__objectNames[11] = "pauser";
global.__objectNames[12] = "openingcredits";
global.__objectNames[13] = "lighting";
global.__objectNames[14] = "sky";
global.__objectNames[15] = "winsplash";
global.__objectNames[16] = "scrolls";
global.__objectNames[17] = "player";
global.__objectNames[18] = "corpse";
global.__objectNames[19] = "block";
global.__objectNames[20] = "instrument";
global.__objectNames[24] = "dangerous";
global.__objectNames[27] = "gunnysnake";
global.__objectNames[29] = "weaksand";
global.__objectNames[30] = "terrain_destruction";
global.__objectNames[31] = "prop";
global.__objectNames[32] = "crab";
global.__objectNames[33] = "critter";
global.__objectNames[34] = "hitbox";
global.__objectNames[35] = "terrain_cutter";
global.__objectNames[36] = "sunblast";
global.__objectNames[37] = "dashattack";
global.__objectNames[38] = "ooga_gp_boom";
global.__objectNames[39] = "jump_vibration";
global.__objectNames[40] = "magicbolt";
global.__objectNames[41] = "airgrab";
global.__objectNames[42] = "ooga_gp_shockwave";
global.__objectNames[43] = "mine";
global.__objectNames[44] = "teleport";
global.__objectNames[45] = "dashclasher";
global.__objectNames[46] = "crabjectile";
global.__objectNames[47] = "clusternet";
global.__objectNames[48] = "mortar";
global.__objectNames[49] = "winter";
global.__objectNames[50] = "freakyfriday";
global.__objectNames[52] = "storm";
global.__objectNames[53] = "payday";
global.__objectNames[55] = "tornadoe";
global.__objectNames[56] = "bloodmoon";
global.__objectNames[57] = "airtunnel";
global.__objectNames[58] = "meteor";
global.__objectNames[59] = "meteor_explosion";
global.__objectNames[60] = "icespike";
global.__objectNames[61] = "zap";
global.__objectNames[62] = "zapindicator";
global.__objectNames[63] = "pineapple";
global.__objectNames[64] = "coco";
global.__objectNames[65] = "wave";
global.__objectNames[66] = "coin";
global.__objectNames[67] = "coldwave";
global.__objectNames[68] = "sentinel";
global.__objectNames[69] = "jellyfish";
global.__objectNames[70] = "mountains_backdrop";
global.__objectNames[71] = "ef";
global.__objectNames[72] = "ef_fade";
global.__objectNames[73] = "ef_backdrop";
global.__objectNames[74] = "ef_screenflash";
global.__objectNames[75] = "ef_steam";
global.__objectNames[76] = "ef_follower";
global.__objectNames[78] = "ef_vine";
global.__objectNames[79] = "ef_fossil";
global.__objectNames[80] = "ef_chain";
global.__objectNames[81] = "ef_debug_fade_text";
global.__objectNames[82] = "ef_rubble";
global.__objectNames[83] = "ef_menupart";
global.__objectNames[84] = "ef_playerselect";
global.__objectNames[85] = "firetrial_control";
global.__objectNames[86] = "icetrial_control";
global.__objectNames[87] = "stormtrial_control";
global.__objectNames[88] = "lightning_collectable";
global.__objectNames[89] = "lightning_totem";
global.__objectNames[90] = "lightningbomb";
global.__objectNames[91] = "clusterlightning";
global.__objectNames[92] = "clingyfireball";
global.__objectNames[93] = "melter";
global.__objectNames[94] = "bottomlava";
global.__objectNames[95] = "meltedblock";
global.__objectNames[96] = "icetrial_falling_spikes";
global.__objectNames[98] = "icetrial_upsike";
global.__objectNames[99] = "glacier";
global.__objectNames[100] = "tree";
global.__objectNames[101] = "dolphin";
global.__objectNames[102] = "torch";


// create another array that has the correct entries
var len = array_length_1d(global.__objectDepths);
global.__objectID2Depth = [];
for( var i=0; i<len; ++i ) {
	var objID = asset_get_index( global.__objectNames[i] );
	if (objID >= 0) {
		global.__objectID2Depth[ objID ] = global.__objectDepths[i];
	} // end if
} // end for