/*
* If statement in swift is similar to other c-style programming languages
* which controls the execution of the code
*/
var highScore = 300

// Methods of using if statement

// Method 1: Paraenthesis for simple condition is optional
if highScore > 400 {
	print("Score is high")
} else {
	print("Low Score \(highScore)")
}

var playerScore = 400;

//Method 2: Using parenthesis for complex conditions
if((highScore > 200) && (playerScore > 100)) {
	print("Player is pro")
} else {
	print("Player is novice")
}
