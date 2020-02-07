import XCTest
@testable import CollectionExtensions

final class CollectionExtensionsTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(CollectionExtensions().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
