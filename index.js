const express = require('express');

const WEBSERVER_PORT = process.env.PORT || 8080;

const webServer = express();

webServer.get("/", (request, response) => {
	response.send("Hello World!");
});

webServer.listen(WEBSERVER_PORT);

console.log("Running on http://localhost: " + WEBSERVER_PORT);
