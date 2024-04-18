function scr_move_to_contact_with(dirn, max_dist, contact_obj) 

// An alternative to the "Move To Contact" action that allows for contact with a specified object / instance
{
    var dx, dy;

    show_debug_message("=====================");

    show_debug_message("direction = " + string(dirn));
    show_debug_message("contact_obj = " + string(contact_obj));
    show_debug_message("contact_obj name  = " + object_get_name(contact_obj));
    
    if( max_dist == -1 ) then max_dist = 1000;
	
    show_debug_message("Max dist = " + string(max_dist));
    
    dx = lengthdir_x( 1, dirn );
    show_debug_message("dx = " + string(dx));
    
    dy = lengthdir_y( 1, dirn );
    show_debug_message("dy = " + string(dy));
    
    dist = 1;
      
    while( dist <= max_dist )
    { 
        show_debug_message("-----------------------------");    
        show_debug_message("dist = " + string(dist) + (" x = " + string(x)) + (" y = " + string(y)));
        
        if( place_meeting( x+dx, y+dy, contact_obj ))
        {
             show_debug_message("contact detected");
             show_debug_message("===========End of function========");
             return true;
        }
        show_debug_message("contact NOT detected");
        
        x = x + dx;
        show_debug_message("x + dx = " + string(x));
        
        y = y + dy;
        show_debug_message("y + dy = " + string(y));
 
        dist = dist + 1;
        show_debug_message("-----------End of while---");
    }   
    show_debug_message("return false");
    
    show_debug_message("===========End of function========");
    return false;
}

function getZoolState() {
	switch(state) {
		case ZSTATE_STAND:
			return "STAND"
			break
		case ZSTATE_WALK:
			return "walk"
			break
		case ZSTATE_JUMP:
			return "jump"
			break
		case ZSTATE_FALL:
			return "fall"
			break
		case ZSTATE_CLIMB:
			return "climb"
			break
		case ZSTATE_CLING:
			return "cling"
			break
		case ZSTATE_SLIP:
			return "slip"
			break
		case ZSTATE_SKID:
			return "skid"
			break
		default:
			return "look in getZoolState this isn't supposed to happen"
			break
	}
	
}

function obj_solidMoveContact() {
	//go back a frame so we arent in the solid thing
	y = yprevious
	x = xprevious
	//go right next to the solid thing
	scr_move_to_contact_with(direction, -1, obj_solid);

	//stop vspeed or hspeed depending on whats near
	if (place_meeting(x, yprevious + vspeed, obj_platform)) {
		vspeed = 0;
	}
	if (place_meeting(xprevious + hspeed, y, obj_solid)) {
		hspeed = median(-MAX_DRIFT_SPEED, hspeed, MAX_DRIFT_SPEED);
	}

	//set to land if theres a platform under
	if (place_meeting(x, y+1, obj_platform) == 1) {
		instance_change(obj_zool_land, true);
	}
}