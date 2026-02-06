// Handle the flashing sequence
switch (flash_step) {
    case 0:
        visible = true;
        alarm[0] = 30;
        flash_step = 1;
        break;
    
    case 1:
        visible = false;
        alarm[0] = 29;
        flash_step = 2;
        break;
    
    case 2:
        visible = true;
        alarm[0] = 27;
        flash_step = 3;
        break;
    
    case 3:
        visible = false;
        alarm[0] = 26;
        flash_step = 4;
        break;
    
    case 4:
        visible = true;
        alarm[0] = 24;
        flash_step = 5;
        break;
    
    case 5:
        visible = false;
        alarm[0] = 23;
        flash_step = 6;
        break;
    
    case 6:
        visible = true;
        alarm[0] = 21;
        flash_step = 7;
        break;
    
    case 7:
        visible = false;
        alarm[0] = 20;
        flash_step = 8;
        break;
    
    case 8:
        visible = true;
        alarm[0] = 18;
        flash_step = 9;
        break;
    
    case 9:
        visible = false;
        alarm[0] = 17;
        flash_step = 10;
        break;
    
    case 10:
        visible = true;
        alarm[0] = 15;
        flash_step = 11;
        break;
    
    case 11:
        visible = false;
        alarm[0] = 14;
        flash_step = 12;
        break;
    
    case 12:
        visible = true;
        alarm[0] = 12;
        flash_step = 13;
        break;
    
    case 13:
        visible = false;
        alarm[0] = 11;
        flash_step = 14;
        break;
    
    case 14:
        visible = true;
        alarm[0] = 9;
        flash_step = 15;
        break;
    
    case 15:
        visible = false;
        alarm[0] = 8;
        flash_step = 16;
        break;
    
    case 16:
        visible = true;
        alarm[0] = 6;
        flash_step = 17;
        break;
    
    case 17:
        visible = false;
        alarm[0] = 5;
        flash_step = 18;
        break;
    
    case 18:
        visible = true;
        alarm[0] = 3;
        flash_step = 19;
        break;
    
    case 19:
        visible = false;
        alarm[0] = 2;
        flash_step = 20;
        break;
    
    case 20:  // Final unhide before room change
        visible = true;
        alarm[0] = 10;  // ~1s pause
        flash_step = 21;
        break;
    
	case 21:  // Toggle between Room1 and Room1_Flipped
		if (room == Room1) {
			room_goto(Room1_Flip);
	    } else if (room == Room1_Flip) {
		    room_goto(Room1);
		}
		flash_step = -1;  // Reset
		break;

}
