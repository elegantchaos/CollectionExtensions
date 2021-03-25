// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
//  Created by Sam Deane on 25/03/21.
//  All code (c) 2021 - present day, Elegant Chaos Limited.
// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

import Foundation

public extension Array {
}

public extension RandomAccessCollection where Index: BinaryInteger {
    subscript(wrapping index: Index) -> Element {
        assert(index >= 0)
        return self[Self.Index(index % Self.Index(count))]
    }
    
    /// Calculate the next index after a given index, wrapping round to the start.
    /// - Parameter index: an index
    /// - Returns: the next index
    func wrappingIndex(after index: Index) -> Index {
        let next = self.index(after: index)
        return next >= endIndex ? startIndex : next
    }
 
    /// Returns the element after a given element.
    /// We return the first element of the array if:
    /// - the passed element isn't in the array
    /// - the passed element is at the end of the array
    ///
    /// - Parameter item: an element to check for
    /// - Returns: the next element
    func elementWrapping(after element: Element) -> Element where Element: Equatable {
        let index: Index
        if let itemIndex = firstIndex(of: element) {
            index = wrappingIndex(after: itemIndex)
        } else {
            index = startIndex
        }
        return self[index]
    }

}
