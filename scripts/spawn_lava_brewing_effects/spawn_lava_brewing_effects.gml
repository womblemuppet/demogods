var LAVA_SPAWNING_SPRITE_WIDTH,LAVA_SPAWNING_SPRITE_HEIGHT;
LAVA_SPAWNING_SPRITE_WIDTH=64
LAVA_SPAWNING_SPRITE_HEIGHT=84

var a;
for (var i = 0; i < room_width/LAVA_SPAWNING_SPRITE_WIDTH;i++)
{
	a=effect_aniend(spr_lava_spawning,choose(0.05,0.1),-4)
	a.x=LAVA_SPAWNING_SPRITE_WIDTH*i
	a.y=kouchou.room_bottom_border_y-LAVA_SPAWNING_SPRITE_HEIGHT
}