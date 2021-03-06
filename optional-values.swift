/*
* Optional Values
* In order to access the value of optionals we need to use the 
* *Forced unwrapping or optional binding techniques
*/

let firstName: String
let middleName: String?
let lastName: String;
let email: String;
let secondaryEmail: String?

firstName = "David"
middleName = "Jonathan"
lastName = "Wesser"

email = "davidj@swift.com"
secondaryEmail = "david_90@swift.com"

// Forced unwrapping
if(middleName != nil) {
	print("Traveller name: \(firstName + middleName! + lastName)");
}

// optional binding
if let newEmail = secondaryEmail {
	print("Email: \(newEmail)")
}
