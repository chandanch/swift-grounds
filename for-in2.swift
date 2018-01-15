/*
* For-in loop
* Executes statements or a block of code multiple times unitl the condition is 
* is true or holds
* With for-in loop we don't need to track indexes, increment indexes
* Avoids off-by-one error
*/

let musicGenres = ["Country Music", "Funk", "Pop", "Blues", "Rapping", "Jazz"]

// for-in loop for iterating over items
for genre in musicGenres {
	print(genre)
}

// closed range operator for iterating over the numbers
for number in 0...10 {
	print(number)
}

// half open range operator for iterating over the numbers
for number in 0..<5 {
	print(number)
}
