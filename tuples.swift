/*
* Tuples
* Tuples are used to group similar data together
* Syntax:
var|let <tuple_name> = (<value1>, <value2>.....)
Note: A tuple must contain more than one value or else swift will throw an error
*/
let playerName = "Josh Welly"
let playerScore = 3400
let playerGrade = "pro"
let playtime = 34600

// creating a tuple
let playerTuple = (playerName, playerScore, playerScore, playtime, playerGrade)

// acessing a particular value from a tuple using tuple index
print(playerTuple.3)

//providing alias to tuple values
let aliasTuple = (name: playerName, score: playerScore, time:playtime, grade: playerGrade)

// accessing the value of tuple using alias
print("Player score is \(aliasTuple.score)\nPlayer grade is \(aliasTuple.grade)")

func showPlayerInfo() -> (String, Int) {
	return (playerName, playerScore)
}

// storing tuple in a constant the type of the variable/constant will be tuple
let playerInfo = showPlayerInfo()
// accessing the value of tuple
print(playerInfo.0)

// providing alias return values of a function
func showPlayTime() -> (timeSpent: String, grade: String) {
	let time = "\(playtime/60) minutes & \(playtime%60) seconds";
	return (time, playerGrade)
}

// creating a variable of tuple type
var (gameTime, gamerGrade) = showPlayTime();
print("Game time: \(gameTime)\nGrade: \(gamerGrade)")

var playerInfoDict = ["name": "Cohan", "grade": "pro"]
// the (key, value) in for-in loop is a tuple when iterating through a dictonary
for (playername, playergrade) in playerInfoDict {
	print("\(playername)  \(playergrade)")
}
