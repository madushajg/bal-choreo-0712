import ballerina/io;
import ballerina/http;

public function main() returns error? {
    @display {
        label: "svc2",
        id: "svc2-55306cfc-7c7e-48c0-a339-26698ad271e1"
    }
    http:Client svc2Client = check new ("");

    http:Response _ = check svc2Client->/greeting.get({name: "John"});

}
