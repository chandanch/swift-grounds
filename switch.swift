/*
* @desc use of switch statement
* @author chandanch
*/

var carPrice: Int = 3400;

switch(carPrice) {
  case 1000:
    print("Price is $1000");
  case 2000: 
    print("Price is less than 2000");
    fallthrough
  case 3400: 
    print("Car price is less than 3000");
    fallthrough;
  case 4000:
    print("Car price is less than 4000");
    fallthrough;
  case 5000:
    print("Car price is less than 5000");
    fallthrough;
  default :
    print("DOD")
  
}
