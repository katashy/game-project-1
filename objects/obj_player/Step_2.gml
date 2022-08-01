/// @description Insert description here
// You can write your code in this editor


//COLISÃO VERTICAL
repeat(abs(velv)) 
{
	if(!place_meeting(x,y +sign(velv), obj_block)) //se eu n estou colidindo 1pixel na direção q eu estou indo
	{
		//se no meu proximo pixel eu não colidir com uma parede/chao
		//posso avançar 1 pixel
		y += sign(velv);
	}
	else
	{
		//no proximo pixel eu entro em uma parede/chap/bloco
		velv = 0;
		break;
	}
}

//COLISÃO HORIZONTAL
repeat(abs(velh))
{
	if(!place_meeting(x + sign(velh), y, obj_block)) //se eu n estou colidindo 1pixel na direção q eu estou indo
	{
		//se no meu proximo pixel eu não colidir com uma parede/chao
		//posso avançar 1 pixel
		x += sign(velh);
	}
	else
	{
		//no proximo pixel eu entro em uma parede/chap/bloco
		velh = 0;
		break;
	}
}










