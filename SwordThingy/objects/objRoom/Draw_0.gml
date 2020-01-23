/// @description Insert description here
// You can write your code in this editor
draw_rectangle_color(x, y, x + Size, y + Size, c_red, c_red, c_red, c_red, 1);

draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text(x, y, string(RoomIndex) + " ("+ string(RoomX)+"x"+string(RoomY)+")" + "\nDoors L" + string(RoomLeft)+"U"+string(RoomUp)+"R"+string(RoomRight)+"D"+string(RoomDown))