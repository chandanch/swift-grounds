/*
* Arrays
* An array is a collection of items with
* Every element in the array has a associated index and the index starts from 0
*/
// array of string items, will be automatically inferred by the compiler
var playerNames = ["Sam", "Peter", "John", "Samules"]

// array of integer items
var scores = [23, 45, 66, 77, 88,]

// get the element from an array based on index
// syntax: <arrayName>[index]
let playerName = playerNames[0]
print("Player name is \(playerName)")

// update an element in an array
scores[3] = 87

// add a new element into the array
playerNames.append("Joseph")

// In order to create an array without any values first need to:
// 1.create an array of a specific type syntax: var|let <ArrayName>: [type]
var levels: [Int]
let levelNames: [String]

// 2.Create a container for the array
levels = []

// 3. Add items to the array
levels.append(2);
levels.append(3);
