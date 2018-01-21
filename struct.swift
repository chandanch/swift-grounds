/*
* Structs
* Structs helps use to create custom types.
* Using structs we can store related data together
* Syntex:
struct <Name> {
	// properties
	var <property_name>: <Type>
	....
	// methods
	func <method_name>() -><return type>{...}
}
* Creating a instance of struct invloves invoking the initializer method or 
* memberwise initializer in which we will have define a value for all properties
*/

struct BankAccount {
	//properties
	var customerName: String
	// default value can also be specified
	var accountBalance: Int
	var accountType: String
	var hasLoanAccount: Bool
	
	//methods
	func showAccountSummary() -> String {
		return "Customer name: \(customerName)\nAccount Balance: \(accountBalance)\nAccount Type: \(accountType)\nHas Loan Account: \(hasLoanAccount)"
	}
} 

// creating an instance of struct using initilizer method or memberwise initializer
var harryAccount = BankAccount(customerName: "Harry Forher", accountBalance: 2300, accountType: "checkings", hasLoanAccount: false)

// accessing the properties of an Struct
print("Harry's account balance is \(harryAccount.accountBalance)");

//changing the properties of a struct
harryAccount.hasLoanAccount = true;
print("Does harray has a loan account? \(harryAccount.hasLoanAccount)")

// accessing the methods of the struct
print(harryAccount.showAccountSummary());

