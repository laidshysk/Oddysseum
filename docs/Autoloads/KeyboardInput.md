Main system for getting information about keyboard input globally. Its a one step further acces from Input Map of the project, so everyone using keyboard acces this global to have the info needed.

Properties:
inputMap : dictionary to hold binary press action of any key, the pairs key : value correspond to:

	- key : name given to said input key
	- value : true/false, wheter that input key is being pressed.

the values of inputMap updates in _procces function of said Global

Comment:
> wheter use of variables or array positions to hold the values of the dictionary values are implementation concern and doesn't affect usage of this Autoload.