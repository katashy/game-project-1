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
	
	//SUBINDO E DECENDO DE RAMPAS
	
	//SUBINDO_ CHECAR SE TEM UM PIXEL LIVRE NA FRENTE PARA PODER ESCALAR
	if (place_meeting(x + sign(velh), y, obj_block) //cehcando se o pixel do lado esta ocupado
	&& !place_meeting(x + sign(velh), y - 1,obj_block)) y--; // checando se o pixel do lado uma linha a cima esta ocupado
	
	//DESCENDO 
	//MESMA LOGICA DO SUBINDO, MAS AGORA CHECAR EM BAIXO
	if (!place_meeting(x + sign(velh), y, obj_block) //cehcando se o pixel da frente esta livre
	&& !place_meeting(x + sign(velh), y + 1,obj_block)  //cehcando se o pixel da frente +1 em baixo esta livre
	&& place_meeting(x + sign(velh), y + 2,obj_block)) y++; // mas se descer +2 pixels tem chão(eu vou encontrar cão e descer) ai inves de cair
	
	
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










