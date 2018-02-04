/*
* closure
* Pass a block of code to a function
*/

struct Player {
	var playerName: String
	var playerScore: Int
	var playTime: Int
}

// create an instance of struct and invoking the initalizer method
let player1 = Player.init(playerName: "Saloris", playerScore: 100, playTime: 3450)
let player2 = Player.init(playerName: "Bugumen", playerScore: 123, playTime: 5670)
// create an instance of struct using init
let player3 = Player.init(playerName: "Nolan", playerScore: 80, playTime: 6700)

let allPlayers = [player1, player2, player3];

/*
* Method 1:
* a stepping stone for closure by creating a function and passing it to the  
* function that expects closure	
* Note: not a good approach, since the function will not used	by any other code	than the method that expects the closure
	MORE VERBORSE
*/
func sortByHigScore(firstPlayer: Player, secondPlayer: Player) -> Bool {
	if secondPlayer.playerScore <= firstPlayer.playerScore {
		return true;
	} else {
		return false;
	}
}

// passing the `sortByHigScore` as a parameter to sorted method of the array
let sortedPlayers = allPlayers.sorted(by: sortByHigScore)

// Method2: a classic use of closure. Good approach but still very verborse
let sortedPlayers = allPlayers.sorted(by: {
	(firstPlayer: Player, secondPlayer: Player) -> Bool
	in
	if secondPlayer.playerScore <= firstPlayer.playerScore {
		return true;
	} else {
		return false;
	}
})

// Method 3: Using implicit automatic parameters provided by the methoid that expects closure
/*
* Defining the parameters and parameter types are optional since the 
* closure of the method knows the number of parameters and automatically infers the type for each parameter. 
* In order to acesss the implict automatic parameters we use $ followed by parameter number. Depending the number of parameters the closure takes swift adds the number to each paramter of a clousure in sequence. Hence first parameter will be $0 and so on.
* We can also access the properties of the parameter using:
	$<parameter-number>.<property_name>
	A Better approach!!
*/
let sortedPlayers = allPlayers.sorted(by: {
	if $1.playerScore <= $0.playerScore {
		return true;
	} else {
		return false;
	}
})

// Method 4: Trailing closure
let sortedPlayers = allPlayers.sorted(by:) {
	if $1.playerScore <= $0.playerScore {
		return true;
	} else {
		return false;
	}
}

//Method 6: Refined trailing closure. Since the closure would return bool we return the 
// truthness or falseness of a condition directly without the return statement
let sortedPlayers = allPlayers.sorted { $1.playerScore <= $0.playerScore }


for player in sortedPlayers {
	print("Player name: \(player.playerName) Player Score: \(player.playerScore)")
}
