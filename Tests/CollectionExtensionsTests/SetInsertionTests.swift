// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
//  Created by Sam Deane on 26/10/2020.
//  All code (c) 2020 - present day, Elegant Chaos Limited.
// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

import XCTest
@testable import CollectionExtensions

final class SetInsertionTests: XCTestCase {
    func testInsertContentsOf() {
        var set = Set<String>()
        
        set.insert(contentsOf: ["a", "b"])
        XCTAssertTrue(set.contains("a"))
        XCTAssertTrue(set.contains("b"))
    }
}
