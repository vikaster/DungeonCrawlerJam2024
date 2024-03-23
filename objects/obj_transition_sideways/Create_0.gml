moved = 0;
							//Images   Scale  x32   (value based on camera_width of 384) @Rob needs to be updated if we do 420x270
a_move_distance[4] = 10.67  // 17		0.33 341.44
a_move_distance[3] = 10.29; // 13		0.43 329.28
a_move_distance[2] = 9.6;   //  9		0.6  307.2
a_move_distance[1] = 8;     //  5		1    256  


//10.67 | (9 * 128) * 0.33 = 380
//10.29 | (7 * 128) * 0.43 = 385
//9.6 | (5 * 128) * 0.6 = 384
// 8 |  (3 * 128) * 1 = 384


/*
	8 * 3 = 24
	9.6 * 5 = 48
	10.29 * 7 = 72
	10.67 * 9 = 96
*/


