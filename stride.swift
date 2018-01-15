/*
* stride
* Helps to increment in steps more than one
* There are two types of stride: 1.Stride through 2. Stride to
*/

// strideThrough: stride through from 0 to 200 including 0 and 200(closed range)
for number in stride(from: 0, through: 200, by: 10) {
  // print(number)
}

// StrideTo: stride from 0 to till 256 in steps of 24 not including 256(hlaf closed range)
for number in stride(from: 0, to: 256, by: 24) {
  print(number)
}
