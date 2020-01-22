///CreateScorePopup(Value);
var popup = instance_create_layer(x, y, "Hud", objScorePopup);
popup.Text = string(argument0);

Score += argument0;