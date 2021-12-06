hspd = (keyboard_check(vk_right) - keyboard_check(vk_left)) * 3
vspd = (keyboard_check(vk_down) - keyboard_check(vk_up)) * 3

if(place_meeting(x+1,y,oWall) || place_meeting(x-1,y,oWall) || place_meeting(x,y-1,oWall) || place_meeting(x,y+1,oWall))	global.col = true
else global.col = false

if(place_meeting(x+hspd,y,oWall)){
	if(!place_meeting(x+sign(hspd),y,oWall)) x += sign(hspd)
	hspd = 0
}
x += hspd

if(place_meeting(x,y+vspd,oWall)){
	if(!place_meeting(x,y+sign(vspd),oWall)) y += sign(vspd)
	vspd = 0
}
y += vspd

///////////////////slope