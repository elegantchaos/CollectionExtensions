// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
//  Created by Sam Deane on 13/05/21.
//  All code (c) 2021 - present day, Elegant Chaos Limited.
// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

import Foundation

extension String: InitMappable {
    public typealias FromType = Substring
}

public protocol InitMappable {
    associatedtype FromType
    init(_ from: FromType)
}

public extension Collection {
    /// Map a collection by turning each element into another type.
    /// The destination type must have an `init` method which takes one
    /// of element type as its sole parameter.
    /// - Parameter type: The type to map to.
    /// - Returns: A new collection containing elements of the new type.
    func map<T>(as type: T.Type) -> [T]  where T: InitMappable, T.FromType == Element {
        self.map({ T($0) })
    }
}

public extension Collection where Element: Equatable {
    /// Returns a Boolean value indicating whether the collection contains the given element.
    /// If the optional element passed in is nil, returns false.
    /// - Parameter value: The element to find, or nil
    /// - Returns: `true` if the element was found in the sequence; otherwise, `false`.
    func contains(_ value: Optional<Element>) -> Bool {
        switch value {
            case .none: return false
            case .some(let unwrapped): return contains(unwrapped)
        }
    }
}
