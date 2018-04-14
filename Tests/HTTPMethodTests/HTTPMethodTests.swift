import XCTest
@testable import HTTPMethod

final class HTTPMethodTests: XCTestCase {
    
    func testGET() {
        XCTAssertEqual(HTTPMethod.get, "GET")
        XCTAssertEqual(HTTPMethod.get, HTTPMethod.extension("GET"))
        XCTAssertNotEqual(HTTPMethod.get, "get")
    }
    
    func testPOST() {
        XCTAssertEqual(HTTPMethod.post, "POST")
        XCTAssertEqual(HTTPMethod.post, HTTPMethod.extension("POST"))
        XCTAssertNotEqual(HTTPMethod.post, "post")
    }
    
    func testPUT() {
        XCTAssertEqual(HTTPMethod.put, "PUT")
        XCTAssertEqual(HTTPMethod.put, HTTPMethod.extension("PUT"))
        XCTAssertNotEqual(HTTPMethod.put, "put")
    }
    
    func testDELETE() {
        XCTAssertEqual(HTTPMethod.delete, "DELETE")
        XCTAssertEqual(HTTPMethod.delete, HTTPMethod.extension("DELETE"))
        XCTAssertNotEqual(HTTPMethod.delete, "delete")
    }
    
    func testPATCH() {
        XCTAssertEqual(HTTPMethod.patch, "PATCH")
        XCTAssertEqual(HTTPMethod.patch, HTTPMethod.extension("PATCH"))
        XCTAssertNotEqual(HTTPMethod.patch, "patch")
    }
    
    func testTRACE() {
        XCTAssertEqual(HTTPMethod.trace, "TRACE")
        XCTAssertEqual(HTTPMethod.trace, HTTPMethod.extension("TRACE"))
        XCTAssertNotEqual(HTTPMethod.trace, "trace")
    }
    
    func testOPTIONS() {
        XCTAssertEqual(HTTPMethod.options, "OPTIONS")
        XCTAssertEqual(HTTPMethod.options, HTTPMethod.extension("OPTIONS"))
        XCTAssertNotEqual(HTTPMethod.options, "options")
    }
    
    func testCONNECT() {
        XCTAssertEqual(HTTPMethod.connect, "CONNECT")
        XCTAssertEqual(HTTPMethod.connect, HTTPMethod.extension("CONNECT"))
        XCTAssertNotEqual(HTTPMethod.connect, "connect")
    }
    
    func testExtensionMethod() {
        XCTAssertEqual(HTTPMethod.extension("CUSTOM"), "CUSTOM")
    }
    
    static var allTests = [
        ("testGET",             testGET),
        ("testPOST",            testPOST),
        ("testPUT",             testPUT),
        ("testDELETE",          testDELETE),
        ("testPATCH",           testPATCH),
        ("testTRACE",           testTRACE),
        ("testOPTIONS",         testOPTIONS),
        ("testCONNECT",         testCONNECT),
        ("testExtensionMethod", testExtensionMethod)
    ]
}
