/*
* Dictonary
* Dictonaries is an un ordered collection of key value pairs
* syntax:
	var <dictonary_name>: ["key_Type": "value_Type"]
				OR
	var <dictornary_name> = ["key": "value"]
*/

// creating or delcaring a dictonary
var countryCodes: [String: String];
// adding key & value pairs to dictonary
countryCodes = [
	"FRA": "France",
	"GB": "Great Britan",
	"RSA": "South Africa",
	"AZR": "AzharBijan",
	"IN": "India",
	"AU": "Australia"
]

// accessing the value of the dictonary using if let syntax
/* Note: Since the dictonary may or may not contain the key value pair we need to
   use if let syntax so that the value when accessing a key is not nil
*/
if let countryName = countryCodes["FRA"] {
	print("Country code FRA is \(countryName)")
}

// adding or updating the value of a key
// Note: If the key value pair is not present then the new key value pair is added
countryCodes["AZR"] = "Azerbaijan";

// getting all the items from dictonary
for (code, countryName) in countryCodes {
	print(code)
	print(countryName)
}
