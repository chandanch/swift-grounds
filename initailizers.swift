/*
* initializer
* initializes the properties of a class to default values
* initializer is invoked when creating an instance of a class
* multiple initializers with different parameter signatures can be specified
*/
class Player {
	// properties: instance level properties with default values
	// Default values must be provided to all the properties of a class since all the
	// properties must in a valid state before creating an instance of a class
	var name: String
	var score: Int
	var badge: String
	var currentLevel: Int?
	
	// initializer - initializes the properties of a class to default values
	// initializer is invoked when creating an instance of a class
	init() {
		self.name = "default"
		self.score = 0
		self.badge = "default badge"
	}
	
	init(playerName: String, playerScore: Int, playerBadge: String) {
		self.name = playerName
		self.score = playerScore
		self.badge = playerBadge
	}
	
	// deinit is called by swift automatically when deallocating the memory for an object that was allocated previously
	// used for releasing file resources or network resources that the object is holding
	deinit {
		
	}
	
	func getPlayerDetails() {
		print("Player name: \(self.name)\nPlayer Score: \(self.score)\nPlayer badge: \(self.badge)")
	}
}

// use of 1st initializer with no parameters
var samules = Player();
samules.name = "Samules Dioce"
samules.score = 345
samules.badge = "Master II"

samules.getPlayerDetails()

// use of 2nd initializer
var dominic = Player(playerName: "Dominic Dodo", playerScore: 230, playerBadge: "Amature 1")
dominic.getPlayerDetails()

