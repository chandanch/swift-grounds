func showPlayerDetails(name: String?, score: Int?, flower: String?) {
	// check if the optional paramter is nil. If not nil save the value in a vsariable or constant. If nil exist immediately
	guard let playerName = name else {return}
	guard let playerScore = score else {return}
	guard let playerFlower = flower else {return}
	// using the variable holding the optional value once the guard statement is over
	print("Player name: \(playerName)\nPlayer Score: \(playerScore)\nPlayer Flower: \(playerFlower)")
}

showPlayerDetails(name: "Fowler", score: 23, flower: "Gop")
