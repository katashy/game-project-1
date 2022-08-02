/// @description Insert description here
// You can write your code in this editor

chao =place_meeting(x, y + 1, obj_block) //se o obj_block estiver +1 bloco a baixo do player o chão existe

var left, right, jump, jump_soltar, run, dash;

left = keyboard_check(vk_left);
right = keyboard_check(vk_right);
jump = keyboard_check_pressed(vk_up);
jump_soltar = keyboard_check_released(vk_up); //serve para interromper o pulo ex: se só der uma apertadinha ele da um pulinho se segurar ele da um pulão
run = keyboard_check(vk_shift);
dash = keyboard_check_pressed(vk_space);

if (run)
{
	var velocidade = velh_run;
}
else
{
	var velocidade = max_velh;
}

if (dash)
{
	slide = true;	
}

velh = (right - left) * velocidade; // o lado q esta sendo apertado vezes velocidade


//ajustando para o player olhar para o lado certo
if (velh !=0) 
{
image_xscale = sign(velh);

if (run)
	{
		sprite = spr_player_run;	
	}
	else
	{
		sprite = spr_player_walk;	
	}
}
else
{
	sprite = spr_player_idle	

}

//if (jump) velv = -max_velv


//pulando se eu estiver no chao
if (chao)
{
	if (jump) velv = -max_velv
	pulo = max_jump;
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
			velv = velv * .5	
		}
		
		}
		// pulo duplo
		if (jump && pulo > 1)
		{
			velv = -max_velv;
			pulo--
	}
	//ajustando spites do player
	if (velv < 0) sprite = spr_player_jump_up;
	else sprite = spr_player_jump_fall;
}




if (slide)
{
	slide_timer--;
	sprite = spr_slide;	
	velh = image_xscale * slide_vel;
	image_yscale = 0.5; // ao deslizar ele fica com metade do tamanha para passar por de baixo de coisas
	var sem_teto = !place_meeting(x, y - sprite_height, obj_block); // checando para ver se não tem nenhum teto em cima ao deslizar

	if (slide_timer <=0 && sem_teto) // ele só podera sair do deslizamento se o timer for 0 e n tiver nada em cima dele
	{
		slide = false;
		slide_timer = room_speed /2;
		image_yscale = 1; // ao parar de deslizar ele volta ao tamha normal
	}

}
 sprite_index = sprite;



