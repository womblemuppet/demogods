/// @description //////////////// [finaledit] could optimize by not recreating surface and just clearing it based on an argument
/////////////////// [finaledit] reminder to use surface_free when killing aizen

if surface_exists(fossil_surface)
    surface_free(fossil_surface)

with aizen
{
    fossil_surface=surface_create(kouchou.rw,kouchou.rh+SURFACE_REDRAW_EVERY)
}
aizen.surface_redraw_counter=0

surface_set_target(fossil_surface)
//draw_clear_alpha(c_white,0)
with block
{
    if divisible==true
    {
        var xx,yy;
        xx=x-__view_get( e__VW.XView, 0 )
        yy=y-__view_get( e__VW.YView, 0 )
        if part==0
        {
            draw_sprite_ext(I[0],image_index,xx,yy,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
            draw_sprite_ext(I[1],image_index,xx+20,yy,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
            draw_sprite_ext(I[2],image_index,xx,yy+20,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
            draw_sprite_ext(I[3],image_index,xx+20,yy+20,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
        }
        else
        {
            draw_sprite_ext(sprite_index,image_index,xx,yy,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
        }
    }

}
with ef_fossil
{
    var xx,yy;
    xx=x-__view_get( e__VW.XView, 0 )
    yy=y-__view_get( e__VW.YView, 0 )
    draw_sprite_ext(sprite_index,image_index,xx,yy,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
}

surface_reset_target()
