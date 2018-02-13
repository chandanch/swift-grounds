/*
* Protocol
* Defines a set of rules that a class or a struct or an enum can adopt and 
  must conform to
* Protcol consists of methods and properties like classs or struct.
* Properties in protocol must define the property name, type of property and 
  either {get} or {get set} specifier
* Methods in protocol must contain the method name. It may optionally contain the parameters. If it contains parameters then the type for each parameters must be specified
* Methods in protocal may optionally specify the return type
*/
protocol PlayerProtocal {
	
	// methods of protocol: may or may not contain parameters and return types
	func showPlayerDetails()
	func calcuateScore(bonus: Int, livesRemaining: Int) -> Int
	
	// properties
	
	// must contain the type and specifier: read-only properties
	var name: String {get}
	var level: Int
}

// adopting to protocol
// Syntax: <classname>: <Protocol_name>
class Player: PlayerProtocal {
	
	// confirming to protocol
	var name: String;
	var level: Int
	
	init(playerName: String, currentLevel: Int) {
		self.name = playerName
		self.level = currentLevel
	}
	
	// confirming to protocol
	func showPlayerDetails() {
		print("PlayerName: \(self.name)")
	}
	
	func calcuateScore(bonus: Int, livesRemaining: Int) -> Int {
		return (bonus * 20) + (livesRemaining * 10)
	}
	
}

var sam = Player(playerName: "Sam Wohlin", currentLevel: 2);
sam.showPlayerDetails();
let totalScore = sam.calcuateScore(bonus: 200, livesRemaining: 2)
print("Total Score: \(totalScore)")
