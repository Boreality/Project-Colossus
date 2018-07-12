
//Walking
if(stage_current == "Walking")
{
	with(obj_boss) //walking movement
	{
		//Animation change
		speed = walkspd;
		direction = point_direction(x,y,obj_player.x,obj_player.y);
	}
	timer_walking--;
	if(timer_walking <= 0)
	{
		stage_current = "Preperation";
		obj_boss.speed = 0;	
	}
}

//Preperation
if(stage_current == "Preperation")
{
	//Preperation animation
	
	//Parry stuff
	
	timer_preperation--;
	if(timer_preperation <= 0) stage_current = "Charge";
}
	
//Change
if(stage_current == "Charge")
{
	var temp1
	var temp2
	var temp3

	
	
	
	
	
	
}










//Plan
/*
	Has 4 modes in this phase: walking, preperation, charge, and recovery
	Walking
		Walks slowly towards player's position, doesnt last long
	Preperation
		Stops walking, does a charge pose animation. 
		Makes some indication of a parry opportunity (Furi)
	Charge
		Charges towards players exact position; they need to use dodge to escape dmg
		
		As charges, releases small bullets from his side.
		
		If player melees at the right moment of attack, parries boss, leaving his with
		longer recovery phase 
		
	Recovery
		After charge or parry, has some time dedicated to standing in same charge pose
		Opportunity for player to attack/recover
		If parried, have different animation play to show player that parrying is good
*/






