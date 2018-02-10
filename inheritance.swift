/*
* Inheritance
* Inheritance allows to inherit the properties and methods of a class to the other class
* The class which inherits the properties and methods is called sub class and the class from
  which the properties is being inherited is called super class
* Syntax:
class <SuperClass>: <SubClass> {...}
* In order prevent overriding the method/property of super class we will need make the 
  method or properties as final: final func <func_name>(){...}
* The final keyword can also be used to prevent a class being inherited
* Sytnax: final class <class_name> {...}
*/

// super class
class Game {
	//properties
	var name: String
	var type: String
	var releaseDate: Int
	
	init() {
		self.name = "default"
		self.type = "default"
		self.releaseDate = 0
	}
	
	//methods
	// the method `showGameDetails cannot be overridden
	final func showGameDetails() {
		print("Game Name: \(self.name)\nGame Type: \(self.type)\nGame Length: \(self.releaseDate)")
	}
}

// sub class
// Inheritance: Inheriting the properties and methods from Game class as-is 
class RPG: Game {
	
}
// creating an instance of sub class
let darkSouls = RPG()
darkSouls.name = "Dark Souls"
darkSouls.type = "role playing"
darkSouls.releaseDate = 2011;
// darkSouls.showGameDetails()

// sub class 2 with its own properties and methods & also inheriting properties and methods from Game class
class StealthShooter: Game {
	// sub-class properties
	var shooterRange: Int
	var maxLife: Int
	var stealthElements: [String]
	
	/* 
	* overriding the intiailizer of the super class
	* By default we must override the initializer from the  super class to prevent confusion
	* swift will by default use the super class initializer. In order to initialize the 
	  properties of a sub class to default values we must override the `init` method
	*/
	override init() {
		self.shooterRange = 0
		self.maxLife = 0
		// using the super keyword we can access the properties and methods of a super class
		super.init()
		// provoide the container for array so that the instance of this class can add elements
		self.stealthElements = []
	}
	
	func printGameDetails() {
		print("Shooter Range: \(self.shooterRange)\nMax Life: \(self.maxLife)")
		for element in self.stealthElements {
			print(element)
		}
	}
}

// accessing the properties of super class
let dishonered = StealthShooter()
dishonered.name = "DIshonoured"
dishonered.type = "Stealth Shooter"
dishonered.releaseDate = 2012
dishonered.showGameDetails()

// accessing subclass properites
dishonered.shooterRange = 700
dishonered.maxLife = 4
dishonered.stealthElements.append("Swizz Knife")
dishonered.stealthElements.append("Flight Gun");
dishonered.stealthElements.append("MF-23 Double loader")
print("=========== Stealth Elements ===============")
dishonered.printGameDetails()

