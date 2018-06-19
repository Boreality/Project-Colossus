/// @desc
//A irregular circle on-off pattern around boss in 1 go

//Same thing as atk1 but with adding 20 degrees and its all in 1 go. And for the next
//Attack there is an offset by 10 degrees
//DONE!


firing_delay--;
firing_delay_sep--;
direction = 0;
if(firing_delay <= 0)
{
	repeat (18) Fire20DegreesSmall();
	firing_delay = firing_delay_max;
	
}
direction = 10;
if(firing_delay_sep <= 0)
{	
	repeat (18) Fire20DegreesSmall();
	firing_delay_sep = firing_delay_max_sep;
}
 
  



