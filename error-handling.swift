/*
* Error Handling
* Error Handling consists of 3 parts
	1. Define the error 2. Throw the error 3. Handle the error
* In swift we adopt to the Error protocol for handling errors
* In swift we will have to define our own customer errors using enum, struct or class

*/

// Define the customer errors
enum ServerError: Error {
	case serverOffline
	case noConnection
	case maxLimitReached
	case accessDenied
	case unknownError
}


func checkUploadStatus(status: Int) throws -> String {
	switch status {
		case 1:
			// throw the error
			throw ServerError.serverOffline
		case 2:
			// throw the error
			throw ServerError.noConnection
		case 3:
			throw ServerError.maxLimitReached
		case 4:
			throw ServerError.accessDenied
		case 5:
			print("Done!")
		default:
			print("Unknown Error")
			throw ServerError.unknownError
	}
	
	return "Upload successful"
}

var uploadStatus: String;

// handle the error
// the do block executes the code and consists of a try block
do {
	// using try we try to execute the code
	uploadStatus = try checkUploadStatus(status: 1)
	print(uploadStatus)
	// handle the appropriate error
} catch ServerError.serverOffline {
	print("Looks like the server is offline due to maintenance")
} catch ServerError.noConnection {
	print("Looks like you don't have internet!")
} catch ServerError.maxLimitReached {
	print("You have reached your upload quota for today")
	// handle the generic error: good practice us the generic error handler
} catch {
	print("Oops! Some error occurred \(error)")
}
