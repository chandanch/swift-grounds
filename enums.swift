enum GameType {
	case action
	case mythology
	case rolePlaying
}

var favGameType: GameType
favGameType = GameType.rolePlaying 
print("My Fav game type is \(favGameType)")

// shorthand way of accessing enum value
favGameType = .action
print("My Fav game type is now \(favGameType)")

// another way of creating enum
enum SportGames {
	case cricket, football, hockey, volley_ball
}

// creating a variable of enum type and accessing the enum value in the same line
var mySport: SportGames = .football
print("My sport is \(mySport)")

// raw values
enum GameRating: String {
	case infant = "pegi3"
	case children = "pegi7"
	case adoloscence = "pegi13"
	case adult = "pegi18"
} 

var gameRating: GameRating
gameRating = GameRating.children;
print(gameRating.rawValue)

// associated values
enum GameInfo {
	case graphicsType(String)
	case gameLength(Int)
	case price(Int)
}

var myGame: GameInfo = .graphicsType("3d");

print("My game graphics is \(myGame)")
