// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
//  Created by Sam Deane on 26/10/2020.
//  All code (c) 2020 - present day, Elegant Chaos Limited.
// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

import Foundation

public extension Set {
    mutating func insert<C>(contentsOf collection: C) where C: Collection, C.Element == Element {
        for item in collection {
            insert(item)
        }
    }
}


public extension Set where Element: Equatable {
    /// Add or remove an element from a set, based on a boolean value.
    /// - Parameters:
    ///   - element: element to add or remove
    ///   - value: If true, the element should be added if missing. If false, the element should be removed if present.
    mutating func changeContains(_ element: Element, to value: Bool) {
        if value {
            insert(element)
        } else {
            remove(element)
        }
    }

    /// Flip the containment of an element.
    /// If it is currently present, remove it, otherwise add it.
    mutating func toggleContains(_ element: Element) {
        if contains(element) {
            remove(element)
        } else {
            insert(element)
        }
    }
}

