/*
* Class
* Class allow us to create our custom types
* Group relevant code together
* We can create multiple instances of a class and re-use it to do some task
* syntax:
	class <class_name> {
		// properties & methods
	}
*/
class Player {
	// properties: instance level properties
	var name: String = ""
	var score: Int = 0
	var badge: String = ""
	var currentLevel: Int?
	
	// methods: instance level methods
	func getPlayerDetails() {
		print("Player name: \(self.name)\nPlayer Score: \(self.score)\nPlayer badge: \(self.badge)")
	}
}

// instance of a class
// syntax: var|let <variable_name> = <class_name>()
var samules = Player();
// accessing the properties of a class
samules.name = "Samules Dioce"
samules.score = 345
samules.badge = "Master II"
/ accessing the method of a class
samules.getPlayerDetails();
