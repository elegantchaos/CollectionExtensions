// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
//  Created by Sam Deane on 09/03/20.
//  All code (c) 2020 - present day, Elegant Chaos Limited.
// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

import XCTest
@testable import CollectionExtensions

final class CollectionMerginTests: XCTestCase {
    let original = ["foo": "original", "bar" : "original"]
    let update = ["bar": "updated", "baz": "added"]
    let updateSequence = [("bar", "updated"), ("baz", "added")]

    func testMergeReplacingDuplicates() {
        var dictionary = original
        dictionary.mergeReplacingDuplicates(update)
        XCTAssertEqual(dictionary["foo"], "original")
        XCTAssertEqual(dictionary["bar"], "updated")
        XCTAssertEqual(dictionary["baz"], "added")
    }

    func testMergeReplacingDuplicatesSequence() {
        var dictionary = original
        dictionary.mergeReplacingDuplicates(updateSequence)
        XCTAssertEqual(dictionary["foo"], "original")
        XCTAssertEqual(dictionary["bar"], "updated")
        XCTAssertEqual(dictionary["baz"], "added")
    }

    func testMergeNewOnly() {
        var dictionary = original
        dictionary.mergeNewOnly(update)
        XCTAssertEqual(dictionary["foo"], "original")
        XCTAssertEqual(dictionary["bar"], "original")
        XCTAssertEqual(dictionary["baz"], "added")
    }

    func testMergeNewOnlySequence() {
        var dictionary = original
        dictionary.mergeNewOnly(updateSequence)
        XCTAssertEqual(dictionary["foo"], "original")
        XCTAssertEqual(dictionary["bar"], "original")
        XCTAssertEqual(dictionary["baz"], "added")
    }

}
