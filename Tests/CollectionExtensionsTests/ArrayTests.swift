// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
//  Created by Sam Deane on 25/03/21.
//  All code (c) 2021 - present day, Elegant Chaos Limited.
// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

import XCTest
@testable import CollectionExtensions

final class ArrayTests: XCTestCase {
    func checkRemoval(start: [Int], removing: Int, expected: [Int]) -> Bool {
        var array = start
        array.removeAll(removing)
        return array == expected
    }
    
    func checkAppend(_ start: [Int], append: [Int], expected: [Int]) -> Bool {
        var array = start
        array.append(contentsOf: append)
        return array == expected
    }

    
    func checkRemove(_ start: [Int], remove: [Int], expected: [Int]) -> Bool {
        var array = start
        array.remove(contentsOf: remove)
        return array == expected
    }
    
    func testRemoveAll() {
        XCTAssertTrue(checkRemoval(start: [1,2,1], removing: 1, expected: [2]))
        XCTAssertTrue(checkRemoval(start: [1,2,1], removing: 2, expected: [1,1]))
        XCTAssertTrue(checkRemoval(start: [1,2,1], removing: 3, expected: [1,2,1]))
    }
    
    func testContainsAll() {
        XCTAssertTrue([1,2,3].contains(allOf: [1,2,3]))
        XCTAssertTrue([1,2,3].contains(allOf: [1,2]))
        XCTAssertTrue([1,2,3].contains(allOf: [1]))
        XCTAssertTrue([1,2,3].contains(allOf: []))
        XCTAssertTrue([Int]().contains(allOf: []))
        XCTAssertFalse([].contains(allOf: [1,2,3,4]))
        XCTAssertFalse([1,2,3].contains(allOf: [1,2,3,4]))
    }

    func testContainsAtLeastOne() {
        XCTAssertTrue([1,2,3].contains(atLeastOneOf: [1,2,3,4]))
        XCTAssertTrue([1,2,3].contains(atLeastOneOf: [1,2,3]))
        XCTAssertTrue([1,2,3].contains(atLeastOneOf: [1,2]))
        XCTAssertTrue([1,2,3].contains(atLeastOneOf: [1]))
        XCTAssertFalse([1,2,3].contains(atLeastOneOf: []))
        XCTAssertFalse([Int]().contains(atLeastOneOf: []))
        XCTAssertFalse([].contains(atLeastOneOf: [1,2,3,4]))
    }

    func testAppendContentsOf() {
        XCTAssertTrue(checkAppend([1,2], append: [3,4], expected: [1,2,3,4]))
        XCTAssertTrue(checkAppend([1,2], append: [], expected: [1,2]))
        XCTAssertTrue(checkAppend([], append: [1,2], expected: [1,2]))
    }

    func testRemoveContentsOf() {
        XCTAssertTrue(checkRemove([1,2,3,4], remove: [5,6], expected: [1,2,3,4]))
        XCTAssertTrue(checkRemove([1,2,3,4], remove: [2,3], expected: [1,4]))
        XCTAssertTrue(checkRemove([1,2], remove: [], expected: [1,2]))
        XCTAssertTrue(checkRemove([], remove: [1,2], expected: []))
    }

}

