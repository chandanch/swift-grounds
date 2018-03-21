/*
* Guard
* Checks if the optional has a value or not.
* If the optional has a value then the value can be stored in other variable or a constant and can used in other parts of the code once the guard is over
* Guard presvers the value of optionals unlike the if let statement
*/
func showPlayerDetails(name: String?, score: Int?, flower: String?) {
	// check if the optional paramter is nil. If not nil save the value in a variable or constant. If nil exist immediately
	guard let playerName = name else {return}
	guard let playerScore = score else {return}
	guard let playerFlower = flower else {return}
	// using the variable holding the optional value once the guard statement is over
	print("Player name: \(playerName)\nPlayer Score: \(playerScore)\nPlayer Flower: \(playerFlower)")
}

showPlayerDetails(name: "Fowler", score: 23, flower: "Gop")

// combining multiple guard statments using , and using a single else
func showGameDetails(name: String?, score: Int?, flower: String?) {
	// check if the optional paramter is nil. If not nil save the value in a variable or constant. If nil exist immediately
	guard let playerName = name,
	guard let playerScore = score,
	guard let playerFlower = flower else {return}
	// using the variable holding the optional value once the guard statement is over
	print("Player name: \(playerName)\nPlayer Score: \(playerScore)\nPlayer Flower: \(playerFlower)")
}
