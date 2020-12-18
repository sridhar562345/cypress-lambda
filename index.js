const cypress = require("cypress");
const child_process = require("child_process");


// set lib64 folder
// process.env.LD_LIBRARY_PATH = "/tmp/lib64:$LD_LIBRARY_PATH";


exports.handler = function(event, context) {
    child_process.execSync("ls", {
      stdio: "inherit"
    });
    child_process.execSync("npm test", {
      stdio: "inherit"
    });
	// cypress.run()
};
