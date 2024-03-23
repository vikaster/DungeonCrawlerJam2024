//moved += (move_dir * 8);
moved += (move_dir);

if (abs(moved) > 32) {
	instance_destroy();
}