// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
//  Created by Sam Deane on 13/05/21.
//  All code (c) 2021 - present day, Elegant Chaos Limited.
// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

import Foundation

/// Missing functions

extension String {
    func ends(with other: String) -> Bool {
        guard other.count > 0 else { return true }
        guard let start = range(of: other, options: .backwards, range: nil, locale: nil) else { return false }
        return start.upperBound == endIndex
    }
}

/// Explicit support for integer slicing of strings.

extension StringProtocol {
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
