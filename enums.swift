/*
* Enums
* Helps to define custom types or user defined types and to specify a set of  
* possible values for a given for the custom type
* Each possible value represents an enum case
* Syntax:
enum <EnumName> {
	case <value>
	case <value>
	....
}
*/

enum GameType {
	case action
	case mythology
	case rolePlaying
}

// accessing the value of enum
// In order to access the value of enum first declare a variable of enum type
var favGameType: GameType
// using the Custom enum type & dot operator get the possbile values
// syntax: <variable_name> = <EnumType>.<value>
favGameType = GameType.rolePlaying 
print("My Fav game type is \(favGameType)")

// shorthand way of accessing enum value
favGameType = .action
print("My Fav game type is now \(favGameType)")

// another way of creating enum: each enum case is separated by comma
enum SportGames {
	case cricket, football, hockey, volley_ball
}

// creating a variable of enum type and accessing the enum value in the same line
var mySport: SportGames = .football
print("My sport is \(mySport)")

// raw values: We can create an enum of a specific data type and also specify 
// each enum case with a predefined value or default value
// synatax: case <enumCase> = <default_value>
enum GameRating: String {
	case infant = "pegi3"
	case children = "pegi7"
	case adoloscence = "pegi13"
	case adult = "pegi18"
} 

var gameRating: GameRating
// accessing the enum case
gameRating = GameRating.children;
// accessing the raw value of the enum case
print(gameRating.rawValue)

// associated values: We can also define a data type for each enum case
enum GameInfo {
	case graphicsType(String)
	case gameLength(Int)
	case price(Int)
}

// specify an associated for the enum case
var myGame: GameInfo = .graphicsType("3d");

switch myGame {
	case .graphicsType(let graphics):
		print("Graphics type is \(graphics)")
	case .gameLength(let gameDuration):
		print("This game takes \(gameDuration)")
	case .price(let cost):
		print("This game costs \(cost)")
	
}

//print("My game graphics is \(myGame)")
