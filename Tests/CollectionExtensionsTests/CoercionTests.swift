// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
//  Created by Sam Deane on 09/03/20.
//  All code (c) 2020 - present day, Elegant Chaos Limited.
// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

import XCTest
@testable import CollectionExtensions

final class CoercionTests: XCTestCase {
    let example: [String:Any] = [
        "string": "123",
        "int": 123,
        "double": 123.456,
        "bool": true
    ]

    func testString() {
        XCTAssertEqual(Coercion.asString("123"), "123")
        XCTAssertEqual(Coercion.asString(123), "123")
        XCTAssertEqual(Coercion.asString(123.456), "123.456")
        XCTAssertEqual(Coercion.asString(true), "true")
        XCTAssertNil(Coercion.asString(nil))
    }
    
    func testInt() {
        XCTAssertEqual(Coercion.asInt("123"), 123)
        XCTAssertEqual(Coercion.asInt(123), 123)
        XCTAssertEqual(Coercion.asInt(123.456), 123)
        XCTAssertEqual(Coercion.asInt(true), 1)
        XCTAssertNil(Coercion.asInt(nil))
    }

    func testDouble() {
        XCTAssertEqual(Coercion.asDouble("123"), 123)
        XCTAssertEqual(Coercion.asDouble(123), 123)
        XCTAssertEqual(Coercion.asDouble(123.456), 123.456)
        XCTAssertEqual(Coercion.asDouble(true), 1)
        XCTAssertNil(Coercion.asDouble(nil))
    }

}
