// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
//  Created by Sam Deane on 25/03/21.
//  All code (c) 2021 - present day, Elegant Chaos Limited.
// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

import XCTest
@testable import CollectionExtensions

final class IndexWrappingTests: XCTestCase {
    func testNextIndex() {

        let array = [1,2,3]
        
        let index1 = array.firstIndex(of: 1)!
        let index2 = array.firstIndex(of: 2)!
        let index3 = array.firstIndex(of: 3)!
        
        XCTAssertEqual(array.wrappingIndex(after: index1), index2)
        XCTAssertEqual(array.wrappingIndex(after: index2), index3)
        XCTAssertEqual(array.wrappingIndex(after: index3), index1)
    }
    
    func testNextIndexOneItem() {
        let array = [1]
        XCTAssertEqual(array.wrappingIndex(after: array.startIndex), array.startIndex)
        XCTAssertEqual(array.wrappingIndex(after: array.endIndex), array.startIndex)
    }

    func testNextIndexEmpty() {
        let array: [Int] = []
        XCTAssertEqual(array.wrappingIndex(after: array.startIndex), array.startIndex)
        XCTAssertEqual(array.wrappingIndex(after: array.endIndex), array.startIndex)
    }

    func testWrappingSubscript() {
        let array = [0,1,2]
        XCTAssertEqual(array[wrapping: 0], 0)
        XCTAssertEqual(array[wrapping: 1], 1)
        XCTAssertEqual(array[wrapping: 2], 2)
        XCTAssertEqual(array[wrapping: 3], 0)

    }
    
    func testElementAfter() {
        let array = [0,1,2]
        XCTAssertEqual(array.elementWrapping(after: 0), 1)
        XCTAssertEqual(array.elementWrapping(after: 1), 2)
        XCTAssertEqual(array.elementWrapping(after: 2), 0)
    }
}
