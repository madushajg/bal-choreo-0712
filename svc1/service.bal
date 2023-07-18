import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
@display {
    label: "svc1",
    id: "svc1-d809fa65-05c2-444e-95e0-7de1e5ddf76f"
}
service / on new http:Listener(9091) {

    // @display {
    //     label: "svc2",
    //     id: "svc2-55306cfc-7c7e-48c0-a339-26698ad271e1"
    // }
    // http:Client svc2Client;

    // function init() returns error? {
    //     self.svc2Client = check new ("");
    // }

    # A resource for generating greetings
    # + name - the input string name
    # + return - string name with hello message or error
    resource function get greeting(string name) returns string|error {
        // Send a response back to the caller.
        if name is "" {
            return error("name should not be empty!");
        }
        return "Hello, " + name;
    }
}
