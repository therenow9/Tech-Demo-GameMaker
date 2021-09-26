
/// @description some shader stuff flash after hit
draw_self();
for(var i=0; i<ds_list_size(global.list_inv);i++){//draw inv to left part of screen screen
	draw_text(5,5+(24*i),global.list_inv[|i]);
}

var interval=8
if(alarm[1] % interval) <= interval/2 {draw_self();}//iframes stuff

//inventory stuff





