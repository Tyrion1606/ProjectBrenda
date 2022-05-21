/// @description Iniciate the create box

// Pretendo criar uma scroll bar para poder visualizar 
// melhor as descrições e termos textos sem limitações.

// O icone começa apagado e quando comprado muda para a cor da torreta
// O sprite da cor será feito posteriormente (Só mudar o fundo da sprite kk)

IndexSelector = 0; // Variable to control the box format

// If the box is outside the room on the right, create it to the left side
if((y + sprite_get_height(Spr_UpgradeBox)) > room_height)
	IndexSelector += 2;
	
// If the box is outside the room on the botton, create it to the top side
if((x + sprite_get_width(Spr_UpgradeBox)) > room_width)
	IndexSelector += 1;

