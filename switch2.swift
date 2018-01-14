/*
* Switch
* Switch statement in swift is similar to c-style switch statement
* Switch statement in swift must be:
* 1. Exhaustive: It must contain default statement
* 2. It must contain atleast one executable code
* 3. break at the end of each case is optional
* 4. Does not support automatic fall through
* 5. Has support for ranges
*/

var calamityIndex = 2;

// basic switch statement
switch calamityIndex {
	case 0:
		print("Tolerable calamity")
	case 1:
		print("Mild calamity")
	case 2:
		print("Medium calamity")
	default:
		print("Invalid Calamity index")
}

// range switch statement with comma separated ranges
calamityIndex = 5
switch calamityIndex {
	case 0,1,2,3:
		print("Low calamity")
	case 4,5,6,7:
	print("High calamity");
	default:
		print("Invalid calamity index")
}

// range switch using range operator (...)
var playerScore = 450

switch playerScore {
	case 0...100:
		print("Low score")
	case 101...300:
		print("Average score")
	case 400...700:
		print("High Score")
	default:
		print("Invalid score")
}
