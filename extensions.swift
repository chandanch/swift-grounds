/*
* Extensions
* Extends the behaviour of exisiting types
* Adds new properties and methods to exisiting types
* Syntax: 
extension <Existing_type> { 
	func <method_name>() {....}
}
*/
extension String {
	func modifyString() -> String{
		// self contains the current string that is passed to the `modifyString()`
		var newString = self
		newString = newString.uppercased()
		newString.insert("#", at: newString.startIndex)
		newString.insert("#", at: newString.endIndex)
		// return the modified string as a String
		return String(newString)
	}
}

var playerName = "David Stelphabierg"
// call the extension method
print(playerName.modifyString())
