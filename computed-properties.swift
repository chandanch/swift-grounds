/*
* Computed properties
* Computes or calculates the value of property every time we ask for it
* Computed properties stores dynamic values based on the computation output
* Computed properties consits of get block and set block
* Set block sets a new value to the computed property
* Set block is a void block and cannot return a value
* Get block performs the computation and returns the computed value. The get block is  
* read-only block and must always return a value
* Syntax:
var <property_name>: type {
	get {
	  ....
	}
	OR(If the property has only get block then no need to explicitly specify get 
    keyword. we can omit it and swift compiler will automatically take it as get block     or read-only property)
	return ......
	set {
	  ....
	}
	OR
	set(<variable_name>) {
	  <variable_name> + 40
	}
}
*/
class Player {
	
	// stored properties
	var name: String
	var livesRemaining: Int
	var currentLevel: Int
	var coinsCollected: Int
	var bonusScore: Int
	
	// computed property with get block
	var score: Int {
		get {
			return (coinsCollected * 10) + (livesRemaining * 20) + (currentLevel * 4)
		}
	}
	
	// computed property 2: This sets the value of bonus and computes the bonus using the passed value
	var bonus: Int {
		// computes the `bonus` using the bonus value passed
		get {
			return (bonusScore * 20) + (coinsCollected * 10) + (currentLevel * 20)
		}
		// sets the `bonusScore` with the passed value(newValue)
		//Note: `newValue` is the default name given to the passed value and can be changed 
		set {
			bonusScore = newValue * 20
		}
	}
	
	init() {
		self.name = ""
		self.livesRemaining = 0
		self.currentLevel = 0
		self.coinsCollected = 0
		self.bonusScore = 0
	}
}

var keemer = Player()
keemer.name = "Elison Keemer"
keemer.livesRemaining = 1
keemer.currentLevel = 2
keemer.coinsCollected = 500
// print the computed score
print("Player \(keemer.name) Score is \(keemer.score)")

var gohome = Player();
gohome.name = "Feder Gohome"
gohome.livesRemaining = 3
gohome.currentLevel = 4
gohome.coinsCollected = 700
print("Player \(gohome.name) score is \(gohome.score)")
// set the bonus value
gohome.bonus = 2
// get the computed bonus value
print("Player bonus is \(gohome.bonus)")
