// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
//  Created by Sam Deane on 14/05/21.
//  All code (c) 2021 - present day, Elegant Chaos Limited.
// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

import XCTest
@testable import CollectionExtensions

final class CollectionTests: XCTestCase {
    func testContainsOptional() {
        let collection = [1,2,3]
        let optionalWithValue: Int? = 1
        XCTAssertTrue(collection.contains(optionalWithValue))
        
        let optionalNil: Int? = nil
        XCTAssertFalse(collection.contains(optionalNil))
    }
}

