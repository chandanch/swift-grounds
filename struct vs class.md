# Struct vs Class

## Struct
  * No need of deinit
  * When creating an instance of struct we will need to specify values to the properties via intializer method or memberwise intializer
  * When creating an instance of a struct we can also intializes the properties of a struct to default values using the init()
  * Does not take part in inheritance
  * When an object of a struct is a constant then all the properties of the struct will also be a constant
  * structs are value types where a memory is alloacted for every instance of a struct. Which means when same instance of a struct is assigned
    to another variable then the two variables have a their own copy of the struct instance

## Class
  * Takes part in inheritance
  * class are reference types which means when an variable holding an instance of a struct is assigned to another variable then both
    the variables refer to the same instance of a class
  * When an object of a class is a constant then the properties of a class which are declared as variables can be modified
  
  * In order to check if a variable of constant refer to the same thing we use the **identity operator(===)**. We check if two objects are identical then for equality
  * Identity operator can only be used for object or classes
    
