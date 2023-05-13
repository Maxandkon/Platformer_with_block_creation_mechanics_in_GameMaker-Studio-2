/// @description Insert description here
// You can write your code in this editor


//if(mouse_x > Oplayer.x){
//	x = (Oplayer.x - Oplayer.x % 64) + 128;
//	y = (Oplayer.y - Oplayer.y % 64);
//}
//if(mouse_x < Oplayer.x){
//	x = (Oplayer.x - Oplayer.x % 64) - 128;
//	y = (Oplayer.y - Oplayer.y % 64);
//}

x = ((mouse_x - mouse_x % 64 + 32));
y = ((mouse_y - mouse_y % 64 + 32));

//x = (Oplayer.x - Oplayer.x %64 + 32 + 64 * sign((mouse_x - mouse_x % 64) - (Oplayer.x - Oplayer.x %64)));
//y = (Oplayer.y - Oplayer.y %64 + 32 + 64 * sign((mouse_y - mouse_y % 64) - (Oplayer.y - Oplayer.y %64)));

if(mouse_check_button(mb_left) and !place_meeting(x,y,Oplayer)){
	var block = instance_create_layer(x,y,"Instances",Oblock);
	with block{
		flag = 1;	
	}
}