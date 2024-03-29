function get_result(_perc){
	if (_perc < 20) return {text : "Bad"};
	if (_perc < 40) return {text : "Poor"};
	if (_perc < 60) return {text : "Ok"};
	if (_perc < 80) return {text : "Good"};
	if (_perc < 99) return {text : "Excellent!"};
	return {text : "Perfect!"};
}