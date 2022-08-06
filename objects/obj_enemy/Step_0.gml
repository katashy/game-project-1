/// @description Insert description here
// You can write your code in this editor



chao = place_meeting(x, y + 1, obj_block);
wall_left = place_meeting(x - 1, y, obj_block);
wall_right = place_meeting(x + 1, y, obj_block);


if (wall_left || wall_right) velh *= -1;

if (velh != 0) image_xscale = sign(velh); //se velocidade horizontal fr diferente de 0, ou seja se ele estiver dandando, a image x dele escolhe uma das velocidades

//gavidade
if (!chao)
{
	velv += grav;	
}








