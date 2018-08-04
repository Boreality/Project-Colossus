/// @desc Planning and variables


enum stage 
{
	start,
	retreat,
	corridor,
	lazerdodge,
	lazertransition,
	gameplay,
	chargetrigger,
	chargeslow,
	recoil,
	victory	
}
stage = stage.start;





//--STAGES--

//Stage 1: drops *dead* on floor. Player eventually walks over it, triggering next phase

//Stage 2: Boss wakes up, screams and charges upwards, smashing corridor
//	Ways to approach: Switch rooms at some point
//					  have part of wall destructable specifically for that phase
//						if doing so, maybe create a bos for keeping the camera within room size
//						Box will have to change for this phase
//Stage 3: Player walks up towards corridor
//	Needs to at this point switch all camera stuff for upcoming phases
//Stage 4: Lazer bears down on player. Slow mo activates, needs to run towards cover
//	Have the end of the lazer move slowly towards player. Not a still, animating object but full moving one.
// Stage 5: Slow-mo deactivates, lazer rages on, gameplay begins
//	Quickly switch the moving lazer for a still, animating object
// Stage 6: Player traverses rhythmic lazer blasts  to reach boss
//	Need to balance difficulty
//	If get hit at this part, continue the music but they restart at the start of the challange
// Stage 7: Player moves to another piece of cover, at which point the boss charges towards player
//	Have trigger directly at the point which the player will be running to for cover.
//	Shift Camera to boss to see what they are doing
//	While camera there, move player directly in charging line (shouldnt be too much of a difference)
// Stage 8: Slowmo starts as boss charges, giving player just enough time to charge and shoot
//	Lock player into only bow charge mode
//	Enable Slow mo
//	Bow Charge time stays the same[if not only slightly longer]
// Stage 9: Boss is shot, thrown back dramaticaly. 
// Stage 10: Victory banner shows up. After a while brief credits roll and game ends


//NOTES
//Need to make slow-motion and/or monotone effect
//Have health bar be at a sliver of health
//Have player not be able to mpve/fire during first couple of stages


