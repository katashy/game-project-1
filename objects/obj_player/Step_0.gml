/// @description Insert description here
// You can write your code in this editor

chao =place_meeting(x, y + 1, obj_block) //se o obj_block estiver +1 bloco a baixo do player o chão existe

var left, right, jump, jump_soltar;

left = keyboard_check(vk_left);
right = keyboard_check(vk_right);
jump = keyboard_check_pressed(vk_space);
jump_soltar = keyboard_check_released(vk_space); //serve para interromper o pulo ex: se só der uma apertadinha ele da um pulinho se segurar ele da um pulão

velh = (right - left) * max_velh; // o lado q esta sendo apertado vezes velocidade
if (jump) velv = -max_velv


//pulando se eu estiver no chao
if (chao)
{
	if (jump) velv = -max_velv
}
else
{
	//não estou no chao
	velv += grav;
	
	//soltado o bot]ao do pulo
	if (jump_soltar)
	{
		//se eu estou subindo eu quero q ele pare de subir tanto
		if ( velv < 0)
		{
			velv = velv * .7	
		}
	}
}



