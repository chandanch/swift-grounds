/*
* Optionals: Optionals does not require an initial value and swift compiler
* wont thrown anny error
* The default or intial value of an optional will be nil
*/

// syntax: let|var <variablename>: <type>?

let firstName: String
// optional string
let middleName: String? 
// optional integer 
let age:Int? 

// assign a value to optional
middleName = "Willis"
firstName = "Peter"

// optional value can be again assigned with nil value
middleName = nil;
