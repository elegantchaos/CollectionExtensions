// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
//  Created by Sam Deane on 10/09/21.
//  All code (c) 2021 - present day, Elegant Chaos Limited.
// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

import XCTest
@testable import CollectionExtensions

final class SumTests: XCTestCase {

    func testSumSimpleSequences() {
        XCTAssertEqual([1,2,3].sum, 6)
        XCTAssertEqual(Set([1,2,3]).sum, 6)

        XCTAssertEqual([1.0,2.0,3.0].sum, 6.0)
        XCTAssertEqual(Set([1.0,2.0,3.0]).sum, 6.0)

    }
    
    func testSumWithKeypath() {
        struct Struct {
            let int: Int
            let double: Double
            
            init(_ int: Int) {
                self.int = int
                self.double = Double(int)
            }
        }

        let items = [Struct(1), Struct(2), Struct(3)]
        XCTAssertEqual(items.sum(of: \.int), 6)
        XCTAssertEqual(items.sum(of: \.double), 6.0)
    }
}
