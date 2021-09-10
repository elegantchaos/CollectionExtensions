// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
//  Created by Sam Deane on 10/09/21.
//  All code (c) 2021 - present day, Elegant Chaos Limited.
// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

import Foundation

public extension Sequence where Element: BinaryInteger {
    /// Returns the sum of the sequence.
    var sum: Element {
        reduce(0, { $0 + $1 })
    }
}

public extension Sequence where Element: BinaryFloatingPoint {
    /// Returns the sum of the sequence.
    var sum: Element {
        reduce(0, { $0 + $1 })
    }
}

public extension Sequence {
    func sum<T>(of key: KeyPath<Element, T>) -> T where T: BinaryInteger {
        reduce(T(0), { $0 + $1[keyPath: key] })
    }

    func sum<T>(of key: KeyPath<Element, T>) -> T where T: BinaryFloatingPoint {
        reduce(T(0.0), { $0 + $1[keyPath: key] })
    }
}
