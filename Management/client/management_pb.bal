import ballerina/grpc;
import ballerina/protobuf;
import ballerina/protobuf.types.empty;
import ballerina/protobuf.types.wrappers;

public const string MANAGEMENT_DESC = "0A106D616E6167656D656E742E70726F746F1A1E676F6F676C652F70726F746F6275662F77726170706572732E70726F746F1A1B676F6F676C652F70726F746F6275662F656D7074792E70726F746F229A010A04426F6F6B12140A057469746C6518012001280952057469746C6512190A08617574686F725F311802200128095207617574686F723112190A08617574686F725F321803200128095207617574686F7232121A0A086C6F636174696F6E18042001280952086C6F636174696F6E12120A046973626E18052001280952046973626E12160A067374617475731806200128095206737461747573223C0A0E426F72726F7765645F626F6F6B7312160A06757365724964180120012809520675736572496412120A046973626E18022001280952046973626E22540A045573657212160A06757365724964180120012809520675736572496412120A046E616D6518022001280952046E616D6512200A0B6163636F756E7454797065180320012809520B6163636F756E7454797065328D030A0A4D616E6167656D656E74122E0A07616464426F6F6B12052E426F6F6B1A1C2E676F6F676C652E70726F746F6275662E537472696E6756616C7565121A0A0A6372656174655573657212052E557365721A052E55736572121A0A0A757064617465426F6F6B12052E426F6F6B1A052E426F6F6B12480A0A72656D6F7665426F6F6B121C2E676F6F676C652E70726F746F6275662E537472696E6756616C75651A1C2E676F6F676C652E70726F746F6275662E537472696E6756616C756512460A0E617661696C61626C65426F6F6B7312162E676F6F676C652E70726F746F6275662E456D7074791A1C2E676F6F676C652E70726F746F6275662E537472696E6756616C756512480A0A6C6F63617465426F6F6B121C2E676F6F676C652E70726F746F6275662E537472696E6756616C75651A1C2E676F6F676C652E70726F746F6275662E537472696E6756616C7565123B0A0A626F72726F77426F6F6B120F2E426F72726F7765645F626F6F6B731A1C2E676F6F676C652E70726F746F6275662E537472696E6756616C7565620670726F746F33";

public isolated client class ManagementClient {
    *grpc:AbstractClientEndpoint;

    private final grpc:Client grpcClient;

    public isolated function init(string url, *grpc:ClientConfiguration config) returns grpc:Error? {
        self.grpcClient = check new (url, config);
        check self.grpcClient.initStub(self, MANAGEMENT_DESC);
    }

    isolated remote function addBook(Book|ContextBook req) returns string|grpc:Error {
        map<string|string[]> headers = {};
        Book message;
        if req is ContextBook {
            message = req.content;
            headers = req.headers;
        } else {
            message = req;
        }
        var payload = check self.grpcClient->executeSimpleRPC("Management/addBook", message, headers);
        [anydata, map<string|string[]>] [result, _] = payload;
        return result.toString();
    }

    isolated remote function addBookContext(Book|ContextBook req) returns wrappers:ContextString|grpc:Error {
        map<string|string[]> headers = {};
        Book message;
        if req is ContextBook {
            message = req.content;
            headers = req.headers;
        } else {
            message = req;
        }
        var payload = check self.grpcClient->executeSimpleRPC("Management/addBook", message, headers);
        [anydata, map<string|string[]>] [result, respHeaders] = payload;
        return {content: result.toString(), headers: respHeaders};
    }

    isolated remote function createUser(User|ContextUser req) returns User|grpc:Error {
        map<string|string[]> headers = {};
        User message;
        if req is ContextUser {
            message = req.content;
            headers = req.headers;
        } else {
            message = req;
        }
        var payload = check self.grpcClient->executeSimpleRPC("Management/createUser", message, headers);
        [anydata, map<string|string[]>] [result, _] = payload;
        return <User>result;
    }

    isolated remote function createUserContext(User|ContextUser req) returns ContextUser|grpc:Error {
        map<string|string[]> headers = {};
        User message;
        if req is ContextUser {
            message = req.content;
            headers = req.headers;
        } else {
            message = req;
        }
        var payload = check self.grpcClient->executeSimpleRPC("Management/createUser", message, headers);
        [anydata, map<string|string[]>] [result, respHeaders] = payload;
        return {content: <User>result, headers: respHeaders};
    }

    isolated remote function updateBook(Book|ContextBook req) returns Book|grpc:Error {
        map<string|string[]> headers = {};
        Book message;
        if req is ContextBook {
            message = req.content;
            headers = req.headers;
        } else {
            message = req;
        }
        var payload = check self.grpcClient->executeSimpleRPC("Management/updateBook", message, headers);
        [anydata, map<string|string[]>] [result, _] = payload;
        return <Book>result;
    }

    isolated remote function updateBookContext(Book|ContextBook req) returns ContextBook|grpc:Error {
        map<string|string[]> headers = {};
        Book message;
        if req is ContextBook {
            message = req.content;
            headers = req.headers;
        } else {
            message = req;
        }
        var payload = check self.grpcClient->executeSimpleRPC("Management/updateBook", message, headers);
        [anydata, map<string|string[]>] [result, respHeaders] = payload;
        return {content: <Book>result, headers: respHeaders};
    }

    isolated remote function removeBook(string|wrappers:ContextString req) returns string|grpc:Error {
        map<string|string[]> headers = {};
        string message;
        if req is wrappers:ContextString {
            message = req.content;
            headers = req.headers;
        } else {
            message = req;
        }
        var payload = check self.grpcClient->executeSimpleRPC("Management/removeBook", message, headers);
        [anydata, map<string|string[]>] [result, _] = payload;
        return result.toString();
    }

    isolated remote function removeBookContext(string|wrappers:ContextString req) returns wrappers:ContextString|grpc:Error {
        map<string|string[]> headers = {};
        string message;
        if req is wrappers:ContextString {
            message = req.content;
            headers = req.headers;
        } else {
            message = req;
        }
        var payload = check self.grpcClient->executeSimpleRPC("Management/removeBook", message, headers);
        [anydata, map<string|string[]>] [result, respHeaders] = payload;
        return {content: result.toString(), headers: respHeaders};
    }

    isolated remote function availableBooks() returns string|grpc:Error {
        empty:Empty message = {};
        map<string|string[]> headers = {};
        var payload = check self.grpcClient->executeSimpleRPC("Management/availableBooks", message, headers);
        [anydata, map<string|string[]>] [result, _] = payload;
        return result.toString();
    }

    isolated remote function availableBooksContext() returns wrappers:ContextString|grpc:Error {
        empty:Empty message = {};
        map<string|string[]> headers = {};
        var payload = check self.grpcClient->executeSimpleRPC("Management/availableBooks", message, headers);
        [anydata, map<string|string[]>] [result, respHeaders] = payload;
        return {content: result.toString(), headers: respHeaders};
    }

    isolated remote function locateBook(string|wrappers:ContextString req) returns string|grpc:Error {
        map<string|string[]> headers = {};
        string message;
        if req is wrappers:ContextString {
            message = req.content;
            headers = req.headers;
        } else {
            message = req;
        }
        var payload = check self.grpcClient->executeSimpleRPC("Management/locateBook", message, headers);
        [anydata, map<string|string[]>] [result, _] = payload;
        return result.toString();
    }

    isolated remote function locateBookContext(string|wrappers:ContextString req) returns wrappers:ContextString|grpc:Error {
        map<string|string[]> headers = {};
        string message;
        if req is wrappers:ContextString {
            message = req.content;
            headers = req.headers;
        } else {
            message = req;
        }
        var payload = check self.grpcClient->executeSimpleRPC("Management/locateBook", message, headers);
        [anydata, map<string|string[]>] [result, respHeaders] = payload;
        return {content: result.toString(), headers: respHeaders};
    }

    isolated remote function borrowBook(Borrowed_books|ContextBorrowed_books req) returns string|grpc:Error {
        map<string|string[]> headers = {};
        Borrowed_books message;
        if req is ContextBorrowed_books {
            message = req.content;
            headers = req.headers;
        } else {
            message = req;
        }
        var payload = check self.grpcClient->executeSimpleRPC("Management/borrowBook", message, headers);
        [anydata, map<string|string[]>] [result, _] = payload;
        return result.toString();
    }

    isolated remote function borrowBookContext(Borrowed_books|ContextBorrowed_books req) returns wrappers:ContextString|grpc:Error {
        map<string|string[]> headers = {};
        Borrowed_books message;
        if req is ContextBorrowed_books {
            message = req.content;
            headers = req.headers;
        } else {
            message = req;
        }
        var payload = check self.grpcClient->executeSimpleRPC("Management/borrowBook", message, headers);
        [anydata, map<string|string[]>] [result, respHeaders] = payload;
        return {content: result.toString(), headers: respHeaders};
    }
}

public type ContextUser record {|
    User content;
    map<string|string[]> headers;
|};

public type ContextBook record {|
    Book content;
    map<string|string[]> headers;
|};

public type ContextBorrowed_books record {|
    Borrowed_books content;
    map<string|string[]> headers;
|};

@protobuf:Descriptor {value: MANAGEMENT_DESC}
public type User record {|
    string userId = "";
    string name = "";
    string accountType = "";
|};

@protobuf:Descriptor {value: MANAGEMENT_DESC}
public type Book record {|
    string title = "";
    string author_1 = "";
    string author_2 = "";
    string location = "";
    string isbn = "";
    string status = "";
|};

@protobuf:Descriptor {value: MANAGEMENT_DESC}
public type Borrowed_books record {|
    string userId = "";
    string isbn = "";
|};
