/*
* Functions
* Functions help to group a block of code, helps to give a meaningful name to it
* and which can be used multiple times.
* syntax: 
func <function_name>() {
	// code block
}
*/

// create a basic function without any parameters
func basicFunction() {
	print("Basic function worked")
}

basicFunction()

// function with parameters Note: Every parameter in a function is a constant
func showPlayerDetails(name: String, score: Int, email: String) {
	print("Player \(name) has scored \(score). Registered email is \(email)")
}

// call a function by specifying the argument label and its value delimited by (:)
// syntax: <function_name>(argumentLabel:<value>,...)
showPlayerDetails(name: "Heroku", score: 340, email: "heroku@swift.com")

// function with parameters and which returns value
func calculateTotalScore(level1Score: Int, level2Score: Int) -> Int {
	let totalScore = level1Score + level2Score
	return totalScore
}

var playerScore = calculateTotalScore(level1Score: 300, level2Score: 300)
print("Player's Total Score is \(playerScore)");

// Function type: We define a function type by looking at the function 
// parameters and its return type
// The below function type is: This function takes a single parameter of int type and returns a string
func assignBadgeToPlayer(playerScore: Int) -> String {
	switch playerScore {
		case 0...200:
			return "Amature"
		case 201...400:
		return "Semi-pro"
		case 401...600:
			return "pro"
		case 601...1000:
			return "Legend"
		default:
			return "Invalid"
	}
}

let playerBadge = assignBadgeToPlayer(playerScore: playerScore)
print("Player badge is \(playerBadge)")
