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
