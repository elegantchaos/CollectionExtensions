// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
//  Created by Sam Deane on 25/03/21.
//  All code (c) 2021 - present day, Elegant Chaos Limited.
// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

import Foundation

public extension Array {
    /// Remove all occurrences of an element
    /// - Parameter value: The element to remove
    mutating func removeAll(_ value: Element) where Element: Equatable {
        removeAll(where: { $0 == value })
    }
    
    /// Does the array contain one of a collection of elements?
    /// - Parameter elements: the elements to test
    /// - Returns: true if at least one element was found in this array
    func contains<C>(atLeastOneOf elements: C?) -> Bool where Element: Equatable, C: Collection, C.Element == Element {
        guard let elements = elements else { return false }
        return contains(where: { elements.contains($0)})
    }

    /// Does the array contain all of a collection of elements?
    /// - Parameter elements: the elements to test for
    /// - Returns: true if all of the elements are present in this array
    func contains<C>(allOf elements: C?) -> Bool where Element: Equatable, C: Collection, C.Element == Element {
        guard let elements = elements else { return false }
        return elements.allSatisfy({ self.contains($0) })
    }
    
    
    /// Append the contents of another collection to this array
    /// - Parameter collection: the collection to append
    mutating func append<C>(contentsOf collection: C?) where C: Collection, C.Element == Element {
        if let collection = collection {
            append(contentsOf: collection)
        }
    }
    
    /// Remove the contents of another collection from this array
    mutating func remove<C>(contentsOf elements: C?) where C: Collection, C.Element == Element, Element: Equatable {
        if let elements = elements {
            for item in elements {
                if let index = firstIndex(of: item) {
                    remove(at: index)
                }
            }
        }
    }
}

public extension Array where Element: Equatable {
    /// Add or remove an element from an array, based on
    /// a boolean value.
    /// - Parameters:
    ///   - element: element to add or remove
    ///   - value: If true, the element should be added if missing. If false, the element should be removed if present.
    mutating func changeContains(_ element: Element, to value: Bool) {
        if value && !contains(element) {
            append(element)
        } else if !value, let index = firstIndex(of: element) {
            remove(at: index)
        }
    }

    
    /// Flip the containment of an element.
    /// If it is currently present, remove it, otherwise append it.
    mutating func toggleContains(_ element: Element) {
        if let index = firstIndex(of: element) {
            remove(at: index)
        } else {
            append(element)
        }
    }
}

