// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
//  Created by Sam Deane on 13/05/21.
//  All code (c) 2021 - present day, Elegant Chaos Limited.
// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

import Foundation

/// Missing functions

public extension StringProtocol {
    func ends<S>(with other: S) -> Bool where S: StringProtocol {
        guard other.count > 0 else { return true }
        guard let start = range(of: other, options: .backwards, range: nil, locale: nil) else { return false }
        return start.upperBound == endIndex
    }
    
    func removing<S>(fromEnd other: S) -> SubSequence where S: StringProtocol {
        guard other.count > 0, let start = range(of: other, options: .backwards, range: nil, locale: nil), start.upperBound == endIndex else { return self[..<endIndex] }
        return self[..<start.lowerBound]
    }

    func removing<S>(ifEndsWith other: S) -> SubSequence? where S: StringProtocol {
        guard other.count > 0, let start = range(of: other, options: .backwards, range: nil, locale: nil), start.upperBound == endIndex else { return nil }
        return self[..<start.lowerBound]
    }

}

/// Explicit support for integer slicing of strings.

public extension StringProtocol {
    subscript(_ partial: PartialRangeUpTo<Int>) -> SubSequence {
        get {
            let upper = index(startIndex, offsetBy: partial.upperBound)
            return self[..<upper]
        }
    }

    subscript(_ partial: PartialRangeFrom<Int>) -> SubSequence {
        get {
            let lower = index(startIndex, offsetBy: partial.lowerBound)
            return self[lower...]
        }
    }

    subscript(_ range: ClosedRange<Int>) -> SubSequence {
        get {
            let lower = index(startIndex, offsetBy: range.lowerBound)
            let upper = index(lower, offsetBy: range.count - 1)
            return self[lower...upper]
        }
    }

}
