Global data for usage

### Data
world : current playing scene, be it a zone, map, menu, etc
player : player instance
playerSoul : player's soul instance
playerInputControl : boolean to tell if the player is allowed to be controlled
inputMap : dictionary to hold binary press action of any key, the pairs key : value correspond to:

	- key : name given to said input key
	- value : true/false, wheter that input key is being pressed.

the values of inputMap updates in _procces function of said Global