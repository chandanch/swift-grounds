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
// keemer.livesRemaining
keemer.currentLevel = 2
keemer.coinsCollected = 500
print("Player \(keemer.name) Score is \(keemer.score)")

var gohome = Player();
gohome.name = "Feder Gohome"
gohome.livesRemaining = 3
gohome.currentLevel = 4
gohome.coinsCollected = 700
print("Player \(gohome.name) score is \(gohome.score)")
gohome.bonus = 2
print("Player bonus is \(gohome.bonus)")

