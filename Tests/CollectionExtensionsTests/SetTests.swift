// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
//  Created by Sam Deane on 26/10/2020.
//  All code (c) 2020 - present day, Elegant Chaos Limited.
// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

import XCTest
@testable import CollectionExtensions

final class SetTests: XCTestCase {
    func testInsertContentsOf() {
        var set = Set<String>()
        
        set.insert(contentsOf: ["a", "b"])
        XCTAssertTrue(set.contains("a"))
        XCTAssertTrue(set.contains("b"))
    }
    
    func testChangeContains() {
        var set = Set<String>()
        
        set.changeContains("Test", to: true)
        XCTAssertTrue(set.contains("Test"))
        set.changeContains("Test", to: false)
        XCTAssertFalse(set.contains("Test"))

    }
    
    func testToggleContains() {
        var set = Set<String>()
        
        set.toggleContains("Test")
        XCTAssertTrue(set.contains("Test"))
        set.toggleContains("Test")
        XCTAssertFalse(set.contains("Test"))
    }
}
