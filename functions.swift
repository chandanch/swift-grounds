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

// use underscore to ignore the value returned from a function
_ = assignBadgeToPlayer(playerScore: 100)

// A function can have different argument label and parameter name
// Argument lablel will be used when calling a function
// parameter name(s) will be used internally within the function
// Syntax: func <function_name>(<argument_label> parameter_name: <type>){..}
func totalPlayTime(start level1Time: Int, end level2Time: Int) -> String {
	let totalTime = level1Time + level2Time
	return "Total Game time: \(totalTime/60) minutes \(totalTime%60) seconds"
}

let playerTimeSpent = totalPlayTime(start: 600, end: 450)
print(playerTimeSpent)

// In order to omit passing the argument lablel while calling a function we
// need to use the _ before the parameter name
// syntax: func <function_name>(_ <parameter_type>: <data_type>)
func showPlayerName(_ name: String) {
	print("Player name is \(name)")
}

// once we add a rule using the (_) to omit the argument label in the function
// definition we don't need to add the argument label when calling the function
showPlayerName("Harry")
