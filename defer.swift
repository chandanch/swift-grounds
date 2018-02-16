/*
* Defer
* The defer block is used for cleanup purposes such freeup network, file resource or any hardware resources
* The code inside the defer block is executed once the function completes its execution or when the function goes out of the scope
* The defer block is also executed during early exit for guard statement or when a custom error is thrown
*/
func uploadFile() {
	var channel: Channel;
	channel.open();
	for item in collection {
		uploadFile(fileName)
	}
	
	// close the channel once all the files are uploaded
	defer {
		// channel will be closed once the execution of function is finised at the end
		channel.close()
	}
}
