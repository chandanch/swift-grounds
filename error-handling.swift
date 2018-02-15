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
do {
	uploadStatus = try checkUploadStatus(status: 1)
	print(uploadStatus)
} catch ServerError.serverOffline {
	print("Looks like the server is offline due to maintenance")
} catch ServerError.noConnection {
	print("Looks like you don't have internet!")
} catch ServerError.maxLimitReached {
	print("You have reached your upload quota for today")
} catch {
	print("Oops! Some error occurred \(error)")
}
