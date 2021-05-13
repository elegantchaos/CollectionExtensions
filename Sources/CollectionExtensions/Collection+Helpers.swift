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
    func map<T>(as type: T.Type) -> [T]  where T: InitMappable, T.FromType == Element {
        self.map({ T($0) })
    }
}
