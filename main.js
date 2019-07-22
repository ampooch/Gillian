//load HTTP 
var http = require('http');

//config HTTP server
var server = http.createServer(function (request, response) {
	response.writeHead(200, {"Content-Type": "text/plain"});
	response.end("Hello World - AMPooch\n");
});

//listen port
server.listen(8000);
console.log("Server listening on port 8000\n");
console.log("HELLO WORLD!!! -AMPooch\n");
